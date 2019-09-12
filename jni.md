# JNI Command
1. Cmake install dlib process

```bash
# I assume that android-cmake is set on $PATH:
cd \path\to\dlib\
mkdir build
cd build
# compile:
     
cmake -DBUILD_SHARED_LIBS=1 \
      -DCMAKE_TOOLCHAIN_FILE=/path/to/toolchain \
      -DANDROID_NDK=/path/to/android-ndk \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_CXX_FLAGS=-std=c++11 -frtti -fexceptions \
      -DANDROID_ABI= armeabi-v7a arm64-v8a x86 x86_64 \
      -DANDROID_PLATFORM=android-28  \
      -DANDROID_TOOLCHAIN=clang \
      -DANDROID_STL=gnustl_static \
      -DANDROID_CPP_FEATURES=rtti exceptions \
      -DDLIB_JPEG_SUPPORT=on \
      -DDLIB_JPEG_STATIC=on \
      ..
cmake --build .  # done
``` 