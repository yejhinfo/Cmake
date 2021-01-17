单个文的Cmake
```
# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 项目信息
project (Demo1)

# 指定生成目标
add_executable(Demo hello.cpp)
```


多个文件的cmake


```
# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 项目信息
project (Demo1)

# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_SRCS 变量
aux_source_directory(. DIR_SRCS)

# 指定生成目标
add_executable(Demo ${DIR_SRCS})
```


多个目录，多个源文件

```
对于这种情况，需要分别在项目根目录 和 mylib 目录里各编写一个 CMakeLists.txt 文件

# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 项目信息
project (Demo2)

# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_SRCS 变量
aux_source_directory(. DIR_SRCS)

# 添加 mylib 子目录
add_subdirectory(./mylib)

# 指定生成目标 
add_executable(Demo hello.cpp)

# 添加链接库
target_link_libraries(Demo mylib)


子目录中的 CMakeLists.txt：

# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_LIB_SRCS 变量
aux_source_directory(. DIR_LIB_SRCS)

# 生成链接库
add_library (mylib ${DIR_LIB_SRCS})


```
多个目录，多个源文件(build+src)

```
顶层Cmake：
# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 项目信息
project (Demo)

# 添加 mylib 子目录
add_subdirectory(./mylib)

# 添加 src 子目录
add_subdirectory(./src)

‘

src中的Cmake：
#向工程添加多个特定的头文件搜索路径 ($(project_source_dir)表示根目录)
include_directories($(project_source_dir)/mylib)

# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_SRCS 变量
aux_source_directory(. DIR_SRCS)

# 指定生成目标 
add_executable(Demo ${DIR_SRCS})

# 添加链接库
target_link_libraries(Demo mylib)


mylib下的 cmake
# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_LIB_SRCS 变量
aux_source_directory(. DIR_LIB_SRCS)

# 生成链接库
add_library (mylib STATIC ${DIR_LIB_SRCS})

```
