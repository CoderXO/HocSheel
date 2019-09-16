#!/bin/bash

# App名称
export AppName='Teacher'
# 打包文件夹位置
export hocPath='/Hoc/'$AppName
# 存放代码位置
export codePath='/Code_Two'
# 脚本存放位置
export shellPath='/Shell'

#删除打包缓存代码
rm -rf $hocPath
#从代码路径复制到打包文件夹
cp -rpf $codePath  $hocPath
#复制脚本文件到项目中
cp -rpf $shellPath/* $hocPath/$AppName

#切换到打包文件夹位置
cd $hocPath/$AppName
pwd
echo "~~~~~~~~~开始打包啦~~~~~~~"
echo "=========================="
bash shell.sh
