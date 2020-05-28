/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "demo.h"
#include "string.h"
#include "platform.h"
#include "spi.h"
#include "usart.h"
#include "logger.h"
#include "st_errno.h"
#include "rfal_nfc.h"
#include "stdbool.h"
#include "time.h"
#include "OpenDoor.h"
#include "locker.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define TIME_DOOR 4000
#define SECONDARY_PERIOD_MS        50     //Time for each execution


/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
SPI_HandleTypeDef hspi1;

UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */
enum main_fsm {
  WAIT,
  WAIT_RESPONSE,
  OPEN_DOOR,
};

enum alarm_fsm{
	OPEN,
	CLOSE,
	ALARM,
};

/** NFC related variables **/
uint8_t globalCommProtectCnt = 0;
char* nfcid = NULL;

/** Info  **/
static uint32_t ulIdUser = 0;
static uint32_t ulIdDevice = 0;

/** Flags  **/
static uint8_t ucflagCardDetected = 1;
static uint8_t ucflagReady = 1;
static uint8_t ucflagAccess = 0; // 1: Accepted.  0: Denied
static uint8_t ucflagBluetooth = 0;
static uint8_t ucflagAccessAcepted_l = 0; //change to 1 to see what it does when the request is accepted
static uint8_t ucDoorOpenFlag = 0; // door sensor. 1 is open 0 is closed

uint32_t door_time;


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_SPI1_Init(void);
static void MX_USART2_UART_Init(void);
/* USER CODE BEGIN PFP */
void delay_until(uint32_t time);
/* Private function prototypes -----------------------------------------------*/

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
static uint8_t ucCardDetected (fsm_t* this) {

	ucflagAccess = 0;
    ucflagAccessAcepted_l = 0;
	nfcid = demoCycle();
	nfcid = demoCycle();
	if(nfcid != NULL){
		platformLog("NFC card detected %s\r\n", nfcid);
		ucflagCardDetected = 1;
		ucflagReady = 0;
	}

	return ucflagCardDetected;
}

static uint8_t ucAccessAcepted (fsm_t* this) { return ucflagAccess; }

static uint8_t ucAccessDenied (fsm_t* this) { return !ucflagAccess; }

static uint8_t ucReady (fsm_t* this) { return ucflagReady; }

static uint8_t ucAllowed(fsm_t* this) {uint8_t a = ucDoorOpenFlag && ucflagAccess;
; return (a);}

static uint8_t ucNotAllowed(fsm_t* this) { uint8_t a = ucDoorOpenFlag && !ucflagAccess;
return (a);}

static uint8_t ucTimeout(fsm_t* this){ return (HAL_GetTick() - door_time > TIME_DOOR);}

static uint8_t ucIsClose(fsm_t* this){ uint8_t a = !ucDoorOpenFlag;
 return a;}
//Request access
static void vRequestAccess (fsm_t* this)
{


  //Update flags
  ucflagCardDetected = 0;

  //Falta la función de Rafa
  char* tmp = NULL;
  strcpy(tmp,nfcid);
  ucflagBluetooth = 1; //Send a bluetooth access request. Send the ulIdDevice
  if(strcmp(nfcid, tmp)){
	  ucflagAccessAcepted_l = 1;
  }
  //start timeout timer
  //timer_start(TIMEOUT);
  nfcid = NULL; // Reset nfcid value
  if(ucflagAccessAcepted_l) {
    ucflagAccess = 1;
    platformLog("Access accepted\r\n");
	HAL_GPIO_WritePin(LED_A_GPIO_Port, LED_A_Pin,GPIO_PIN_SET); //access accepted
  } else {
	platformLog("Access denied\r\n");
	ucflagReady = 0;
	HAL_GPIO_WritePin(LED_B_GPIO_Port, LED_B_GPIO_Port,GPIO_PIN_SET); //access denied

  }

}

//Update flags
static void vUpdateFlag (fsm_t* this)
{
  ucflagAccess = 0;
}

//Wait till the door is open
static void vOpenDoor (fsm_t* this)
{
  //Update flags

  platformLog("Opening door...\r\n");
  HAL_GPIO_WritePin(LED_F_GPIO_Port, LED_F_Pin,GPIO_PIN_SET); //indicates that the door started to open


}

static void vIsOpened(fsm_t* this)
{

	HAL_GPIO_WritePin(LED_A_GPIO_Port, LED_A_Pin, GPIO_PIN_SET);
	platformLog("La puerta esta abierta. Cierrala.\r\n");
	door_time = HAL_GetTick();

}

static void vIsClosed(fsm_t* this)
{

	HAL_GPIO_WritePin(LED_A_GPIO_Port, LED_A_Pin, GPIO_PIN_RESET);
	platformLog("La puerta esta cerrada\r\n");
	ucflagReady = 1;

}

static void vAlarm(fsm_t* this)
{

	HAL_GPIO_WritePin(LED_B_GPIO_Port, LED_B_Pin, GPIO_PIN_SET);
	platformLog("Alarma sonando con un ruido espantoso...\r\n");

}

static void vNotAlarm(fsm_t* this){


	HAL_GPIO_WritePin(LED_B_GPIO_Port, LED_B_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(LED_A_GPIO_Port, LED_A_Pin, GPIO_PIN_RESET);
	platformLog("Se apaga la alarma porque se ha cerrado la puerta\r\n");
	ucflagReady = 1;


}

static void vReady(fsm_t* this){
	HAL_GPIO_WritePin(LED_F_GPIO_Port, LED_F_Pin,GPIO_PIN_RESET);
}
// Explicit FSM description

static fsm_trans_t fsm_table1[] = {

  { WAIT,           ucCardDetected,   WAIT_RESPONSE,  vRequestAccess },
  { WAIT_RESPONSE,  ucAccessDenied,   WAIT,           vUpdateFlag },
//  { WAIT_RESPONSE,  TimeoutWait,      WAIT,           vUpdateFlag },  //Verificar como implementamos el timeout
  { WAIT_RESPONSE,  ucAccessAcepted,  OPEN_DOOR,      vOpenDoor },
  { OPEN_DOOR,      ucReady,     WAIT,           vReady },
  {-1, NULL, -1, NULL },

};

static fsm_trans_t fsm_table2[] = {
		{CLOSE, ucAllowed, OPEN, vIsOpened},
		{OPEN, ucIsClose, CLOSE, vIsClosed},
		{OPEN, ucTimeout, ALARM, vAlarm},
		{CLOSE, ucNotAllowed, ALARM, vAlarm},
		{ALARM, ucIsClose, CLOSE, vNotAlarm},
		{-1, NULL, -1, NULL}
};

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */
  

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_SPI1_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */


  /* Initialize driver*/
  spiInit(&hspi1);
  
  /* Initialize log module */
  logUsartInit(&huart2);

  /* Create new fsm */
  fsm_t* main_fsm = fsm_new(fsm_table1);
  fsm_t* alarm_fsm = fsm_new(fsm_table2);

  uint32_t next_execution;
  uint8_t frame = 0;
  /*******************************************************/

  platformLog("************* NFC DEMO *************\r\n");

  /* Initalize RFAL */
  if( !demoIni() )
  {
    /*
    * in case the rfal initalization failed signal it by flashing all LED
    * and stoping all operations
    */
    platformLog("NFC Driver initialization FAIL.\r\n");
    while(1);
  }
  else
  {
    platformLog("NFC Driver initialization OK.\r\n");
    platformLog("*******************************************\r\n");
    
  }


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1) 
  {

    /* Run Demo Application */
	//nfcid = NULL;
	  /*if((HAL_GetTick() - time_locker) > 100){
		  fsm_fire(main_fsm);
		  time_locker = HAL_GetTick();
	  }
	  if((HAL_GetTick() - time_alarm) > 20){
		  fsm_fire(alarm_fsm);
		  time_alarm = HAL_GetTick();
	  }

	  if( platformGpioIsLow(PLATFORM_USER_BUTTON_PORT, PLATFORM_USER_BUTTON_PIN))
		  ucDoorOpenFlag = 1;
	  else
		  ucDoorOpenFlag = 0;*/

	 next_execution = HAL_GetTick() + SECONDARY_PERIOD_MS ;
	 switch (frame) {
	 case 0:
		  fsm_fire(main_fsm);
		  fsm_fire(alarm_fsm);
		  break;
	 case 1:
		  fsm_fire(alarm_fsm);
		  break;
	 case 2:
		  fsm_fire(alarm_fsm);
		  break;
	 case 3:
		  fsm_fire(alarm_fsm);
		  break;
	 case 4:
		  fsm_fire(alarm_fsm);
		  break;
	 case 5:
		  fsm_fire(alarm_fsm);
		  break;
	  }
	 frame = (frame + 1) % 6;
	 delay_until(next_execution);
	  }





    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage 
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSE;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1|GPIO_PIN_4|GPIO_PIN_8, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6, GPIO_PIN_RESET);

  /*Configure GPIO pin : B1_Pin */
  GPIO_InitStruct.Pin = B1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : PA0 */
  GPIO_InitStruct.Pin = GPIO_PIN_0;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : PA1 PA4 PA8 */
  GPIO_InitStruct.Pin = GPIO_PIN_1|GPIO_PIN_4|GPIO_PIN_8;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : PB0 PB4 PB5 PB6 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : PA15 */
  GPIO_InitStruct.Pin = GPIO_PIN_15;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI0_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI0_IRQn);

  HAL_NVIC_SetPriority(EXTI15_10_IRQn, 0, 1);
  HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);

}

/* USER CODE BEGIN 4 */
void delay_until(uint32_t time){
    uint32_t currentTime = HAL_GetTick();
    if(currentTime >= time){
        return;
    }
    else{
    	HAL_Delay(time - currentTime);
    }
    return;
}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  /* Prevent unused argument(s) compilation warning */
	if(GPIO_Pin == GPIO_PIN_13){
		static int a;
		if(HAL_GetTick() - a > 100){
		ucDoorOpenFlag = !ucDoorOpenFlag;
	}
	a = HAL_GetTick();
	}

  /* NOTE: This function Should not be modified, when the callback is needed,
           the HAL_GPIO_EXTI_Callback could be implemented in the user file
   */
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  while(1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
