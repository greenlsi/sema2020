CC = gcc

CFLAGS = $(shell pkg-config --cflags raft libuv) -g

LDLIBS = $(shell pkg-config --libs raft libuv)


 

server: server.o
