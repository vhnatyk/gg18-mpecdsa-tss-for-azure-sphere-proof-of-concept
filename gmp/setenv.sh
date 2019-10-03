#!/bin/sh

mount "c:/PROGRA~2/MI3C21~1" /azure_sdk #c:/program files (x86)/microsoft azure sphere sdk
mount "c:/PROGRA~2/MI3C21~1/Sysroots/2+Beta1905/tools/gcc" /lib

# CPPFLAGS="-I/foo_local/include"
# CFLAGS="-I/foo_local/include"
# CXXFLAGS="-I/foo_local/include"
# LDFLAGS="-L/foo_local/lib -mthreads"


AZS_SDK="2+Beta1905"
# AZS_SDK=1+Beta1902


SYSROOTS="/azure_sdk/Sysroots"
CURRENT_SYSROOT="$SYSROOTS/$AZS_SDK"

export CPATH="$CURRENT_SYSROOT/usr/include"
export C_INCLUDE_PATH="$CPATH"

echo C_INCLUDE_PATH
echo $CPATH
echo $C_INCLUDE_PATH

# echo $C_INCLUDE_PATH$
# CPLUS_INCLUDE_PATH
# OBJC_INCLUDE_PATH


AZSPHERETOOLS="/azure_sdk/Tools/"
# SYSROOT=$SYSROOTS/$AZS_SDK
SYSROOT_TOOLS="$CURRENT_SYSROOT/tools"
CCPATH="$SYSROOT_TOOLS/gcc"
# app_root=target/$target/approot
# out_path=$app_root/bin

# RUST_TARGET_PATH=
export gcc=gcc_wrapper
export CC=gccw
export CXX=gcc_wrapper

CFLAGS="-fno-use-linker-plugin"

# binname=bn1
# libname=rust_hello
# config=$1
# if "$config"=="" config=debug
# # config=release
# # config=debug

# TARGET=arm-v7-none-eabi
# TARGET=armv7-poky-linux-musleabi
# TARGET=armv7-unknown-linux-gnueabihf
TARGET=arm-poky-linux-musleabi

# pltfrm_target="arm-poky-linux-musleabi"

old_path="$PATH"

PATH="/c/Users/utech/.cargo/bin:$AZSPHERETOOLS:$CCPATH:$PATH"
export PATH

# ln -sv "$(which gccw)" cc
# ln -sv "$(which gcc_wrapper)" /lib/cpp
