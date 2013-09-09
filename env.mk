export TARGET_DIR := /nfs/pegaarm
export ENV_NAME := PEGAARM

PREFIX:=/opt/gcc-linaro-arm-linux-gnueabihf-4.8-2013.08_linux
HOST:=arm-linux-gnueabihf
export LIB_DIR:=$(PREFIX)/$(HOST)/libc/lib/$(HOST)
export PATH:=$(PREFIX)/bin:$(PATH)
CROSS_COMPILE:=$(HOST)-
export CC:=$(CROSS_COMPILE)gcc
export CXX:=$(CROSS_COMPILE)g++
export LD:=$(CROSS_COMPILE)ld
export AS:=$(CROSS_COMPILE)as
export READELF:=$(CROSS_COMPILE)readelf
export NM:=$(CROSS_COMPILE)nm
export OBJDUMP:=$(CROSS_COMPILE)objdump
export GDB:=$(CROSS_COMPILE)gdb
