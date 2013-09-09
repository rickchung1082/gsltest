export TARGET_DIR := /nfs/pegaarm
export ENV_NAME := BEAGLE

SYSROOT=/usr/local/oecore-i686/sysroots/i686-angstromsdk-linux
HOST:=arm-angstrom-linux-gnueabi
export LIB_DIR:=$(PREFIX)/lib
export PATH:=$(SYSROOT)/usr/bin/armv7a-vfp-neon-angstrom-linux-gnueabi:$(PATH)
CROSS_COMPILE:=$(HOST)-
export CC:=$(CROSS_COMPILE)gcc
export CXX:=$(CROSS_COMPILE)g++
export LD:=$(CROSS_COMPILE)ld
export AS:=$(CROSS_COMPILE)as
export READELF:=$(CROSS_COMPILE)readelf
export NM:=$(CROSS_COMPILE)nm
export OBJDUMP:=$(CROSS_COMPILE)objdump
export GDB:=$(CROSS_COMPILE)gdb
