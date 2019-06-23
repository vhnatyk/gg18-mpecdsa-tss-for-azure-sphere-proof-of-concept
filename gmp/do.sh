#!/bin/sh

. ./setenv.sh

# mount "c:/PROGRA~2/MI3C21~1" /azure_sdk #c:/program files (x86)/microsoft azure sphere sdk

# # CPPFLAGS="-I/foo_local/include"
# # CFLAGS="-I/foo_local/include"
# # CXXFLAGS="-I/foo_local/include"
# # LDFLAGS="-L/foo_local/lib -mthreads"


# AZS_SDK="2+Beta1905"
# # AZS_SDK=1+Beta1902


# SYSROOTS="/azure_sdk/Sysroots"
# CURRENT_SYSROOT="$SYSROOTS/$AZS_SDK"

# # CPATH
# # export C_INCLUDE_PATH="$CURRENT_SYSROOT/usr/include"
echo $C_INCLUDE_PATH
# # CPLUS_INCLUDE_PATH
# # OBJC_INCLUDE_PATH


# AZSPHERETOOLS="/azure_sdk/Tools/"
# # SYSROOT=$SYSROOTS/$AZS_SDK
# SYSROOT_TOOLS="$CURRENT_SYSROOT/tools"
# CCPATH="$SYSROOT_TOOLS/gcc"
# # app_root=target/$target/approot
# # out_path=$app_root/bin

# # RUST_TARGET_PATH=
# # gcc=gcc_wrapper

# # binname=bn1
# # libname=rust_hello
# # config=$1
# # if "$config"=="" config=debug
# # # config=release
# # # config=debug

# # TARGET=arm-v7-none-eabi
# # TARGET=armv7-poky-linux-musleabi
# # TARGET=armv7-unknown-linux-gnueabihf
# # TARGET=arm-poky-linux-musleabi

# pltfrm_target="arm-poky-linux-musleabi"

# old_path="$PATH"

# export PATH="/c/Users/utech/.cargo/bin:$AZSPHERETOOLS:$CCPATH:$PATH"

make clean
make mostlyclean

echo "debug ..."

echo $pltfrm_target

echo $PATH

echo "end ..."

ln -sv -f "$(which gccw)" "/mingw64/bin/cc"
ln -sv -f "$(which gccw)" /lib/cpp

./configure --enable-static --disable-shared --host=$TARGET
 # $pltfrm_target

# echo $old_path
# export PATH="$old_path"