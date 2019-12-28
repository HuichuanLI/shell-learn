#!/bin/bash

# Verification of parameter（验证参数）
# If no parameter, use a default value（如果没有给出参数，那么用默认值 gallery.html ）
if [ -z $1 ]
then
    output='gallery.html'
else
    output=$1
fi

# Preparation of files and folders（准备文件和目录）
echo '' > $output

if [ ! -e thumbnails ]
then
    mkdir thumbnails
fi

# Beginning of HTML（HTML 文件的开头）
echo '<!DOCTYPE html>
<html>
  <head>
    <title>My Gallery</title>
  </head>
  <body>
    <p>' >> $output

# Generation of thumbnails and the HTML web page（生成图片的缩略图和 HTML 的页面主体）
for image in `ls *.jpg *.png *.jpeg *.gif 2>/dev/null`
do
    convert $image -thumbnail '200x200>' thumbnails/$image
    echo '      <a href="'$image'"><img src="thumbnails/'$image'" alt=""/></a>' >> $output
done

# End of HTML（HTML 文件的结尾）
echo '    </p>
  </body>
</html>' >> $output
