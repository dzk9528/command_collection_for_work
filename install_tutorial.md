# Install Tutorial

## Environment

- Ubuntu 16.04

## 1. OPENCV 3 INSTALL

### Commands

```bash
wget https://github.com/opencv/opencv/archive/3.4.1.zip
wget https://github.com/opencv/opencv_contrib/archive/3.4.1.zip
unzip opencv-3.4.1.zip -d $HOME/
unzip opencv_contrib-3.4.1.zip -d $HOME/
cd $HOME/opencv-3.4.1
mkdir build
cd build
# add contrib if more function is needed
cmake -DWITH_QT=ON \
-DWITH_OPENGL=ON \
-DFORCE_VTK=ON \
-DWITH_TBB=ON \
-DWITH_GDAL=ON \
-DWITH_XINE=ON \
-DBUILD_EXAMPLES=OFF \
-DWITH_LAPACK=OFF \
-DWITH_OPENCL=OFF \
-DCMAKE_INSTALL_PREFIX=/home/dizhang/opencv-3.4.1/release \
-DCMAKE_BUILD_TYPE="Release" \
-D OPENCV_EXTRA_MODULES_PATH=/home/dizhang/opencv_contrib-3.4.1/modules \
..
make -j $(($(nproc) + 1)) -l $(($(nproc) + 1))
make install
```

### Cmake Configuration

```cmake
project(project_name)

set (OPENCV3_PATH "/path/to/opencv-3.4.1/release")

if(UNIX)
    MESSAGE("  OpenCV path: ${OPENCV3_PATH}")
    LIST(APPEND OpenCV_INCLUDE_DIRS ${OPENCV3_PATH}/include/)
    file(GLOB OpenCV_LIBS ${OPENCV3_PATH}/lib/*.so*)
    MESSAGE("OpenCV information:") 
    MESSAGE("  OpenCV_INCLUDE_DIRS {OpenCV_INCLUDE_DIRS}") 
    MESSAGE("  OpenCV_LIBRARIES: ${OpenCV_LIBS}") 
endif(UNIX)

include_directories(${OpenCV_INCLUDE_DIRS})

add_executable( source source.cpp)
target_link_libraries(source PRIVATE ${OpenCV_LIBS})
```
### Errors and Solutions

1. Graphcut Errors:

```bash
modules/cudalegacy/src/graphcuts.cpp:120:54: error: ‘NppiGraphcutState’ has not been declared
```

Solution: 
https://github.com/opencv/opencv/commit/af64ecdf25e450785c9abf29cfd2085c01d027fb
