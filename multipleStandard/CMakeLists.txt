# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 项目信息
project (Demo)

# 添加 mylib 子目录
add_subdirectory(./mylib)

add_subdirectory(./src)
