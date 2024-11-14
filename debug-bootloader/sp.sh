#!/bin/bash

# # 定义图片文件名（不包含后缀）
# IMAGE_NAME="image"

# # # 定义支持的后缀列表
# EXTENSIONS=("JPG" "jpg" "jpeg" "png" "bmp" "gif" "tiff")

# # 遍历后缀列表，查找存在的图片文件
# for EXT in "${EXTENSIONS[@]}"; do
#     if [ -f "${IMAGE_NAME}.${EXT}" ]; then
#         IMAGE_FILE="${IMAGE_NAME}.${EXT}"
#         break
#     fi
# done

IMAGE_FILE="$1";
echo "$1"
# 检查是否找到图片文件
if [ -z "$IMAGE_FILE" ]; then
    echo "未找到图片文件"
    exit 1
fi


# 使用ImageMagick的convert命令将图片转换为二进制文件
convert "$IMAGE_FILE" -depth 8 rgb:image.hex

# 使用xxd将RGB数据转换为十六进制表示
xxd -i image.hex > pic.c

# 使用ImageMagick的identify命令获取图片分辨率
RESOLUTION=$(identify -format "%wx%h" "$IMAGE_FILE")
echo "图片分辨率: $RESOLUTION"

# 拆分分辨率为宽度和高度
WIDTH=$(echo $RESOLUTION | cut -d'x' -f1)
HEIGHT=$(echo $RESOLUTION | cut -d'x' -f2)

# 定义要修改的.c文件
C_FILE="pic.c"

# 将宽度和高度追加到已有的.c文件中
cat <<EOL >> pic.c

// 图片分辨率
int pic_width = $WIDTH;
int pic_height = $HEIGHT;
EOL

make -j4 run



