#向工程添加多个特定的头文件搜索路径 ($(project_source_dir)表示根目录)

include_directories($(project_source_dir)/mylib)


SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_SRCS 变量
aux_source_directory(. DIR_SRCS)

# 指定生成目标 
add_executable(Demo ${DIR_SRCS})

# 添加链接库
target_link_libraries(Demo mylib)