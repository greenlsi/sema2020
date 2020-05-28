all: pan
		./pan -a -f -m10000000 -N LockerNoBlock
		./pan -a -f -m10000000 -N AlarmNoBlock
		./pan -a -f -m10000000 -N HubNoBlock
		./pan -a -f -m10000000 -N RMTNoBlock
		./pan -a -f -m10000000 -N LockerTimeout
		./pan -a -f -m10000000 -N AlarmTimeout
		./pan -a -f -m10000000 -N HubTimeout
		./pan -a -f -m10000000 -N RMTTimeout
		./pan -a -f -m10000000 -N NoLogProblems
		./pan -a -f -m10000000 -N LockerToHub
		./pan -a -f -m10000000 -N OpenLockerDoor
		./pan -a -f -m10000000 -N HubToHub
		./pan -a -f -m10000000 -N OpenHubDoor
		./pan -a -f -m10000000 -N AccessLocker
		./pan -a -f -m10000000 -N AccessHub
		./pan -a -f -m10000000 -N PermissionRMT
		./pan -a -f -m10000000 -N AlarmStart

pan: pan.c
		gcc -o pan pan.c -m32 -DNFAIR=4 -DCOLAPSE

pan.c: lockerAndHub.pml
		spin -a lockerAndHub.pml