export CROSS_COMPILE=/home/mady51/toolchains/gcc4.9/bin/aarch64-linux-android-
export ARCH=arm64
export SUBARCH=arm64
export KBUILD_COMPILER_STRING="Clang Version 12"

export CROSS_COMPILE_ARM32=/home/mady51/toolchains/compiler32/bin/arm-linux-androideabi-


#mkdir -p out1
make O=out1 clean
make O=out1 mrproper
make crdroid_defconfig  O=out1
make -j$(nproc --all) CC=/home/mady51/toolchains/clang/clang-r407598/bin/clang-12  CLANG_TRIPLE=aarch64-linux-gnu- O=out1
