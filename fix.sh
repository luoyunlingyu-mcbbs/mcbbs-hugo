#!/bin/bash

# 指定文件夹路径
folder_path="$1"

# 遍历文件夹中的所有文件
for file in "$folder_path"/*
do
    # 判断文件是否为普通文件
    if [ -f "$file" ]; then
        # 替换文件中指定内容
        sed -i 's/thi s/this/g' "$file"
    fi
done

echo "替换完成！"
