# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_LIB_SRCS 变量
aux_source_directory(. DIR_LIB_SRCS)

#设置库目录的路径(指的是build文件目录)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

# 生成链接库
add_library (mylib STATIC ${DIR_LIB_SRCS})
