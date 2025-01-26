@echo off
:: 设置窗口标题
title 程序选择菜单

:: 设置文字颜色为蓝色（前景色：蓝色，背景色：黑色）
color 1f

:: 显示ASCII艺术
echo  __  __   _____   _       _                       
echo |  \/  | |_   _| | |__   (_)  _ __     __ _   ___ 
echo | |\/| |   | |   | '_ \  | | | '_ \   / _` | / __|
echo | |  | |   | |   | | | | | | | | | | | (_| | \__ \
echo |_|  |_|   |_|   |_| |_| |_| |_| |_|  \__, | |___/
echo                                       |___/       

echo.
echo 部分来源于网络，如有侵权联系删除

:: 获取当前用户的桌面路径
set "desktop=%USERPROFILE%\Desktop"

:: 检查是否安装了wget
where wget >nul 2>nul
if %errorlevel% neq 0 (
    echo wget 未安装，正在安装 wget...
    :: 下载 wget
    bitsadmin /transfer "wgetDownloadJob" https://eternallybored.org/misc/wget/releases/wget-1.21.1-win64.zip "%cd%\wget.zip"
    :: 解压 wget 使用 360 压缩工具
    "C:\Program Files (x86)\360\360zip\360zip.exe" x "%cd%\wget.zip" -o"%cd%\wget" -y
    set PATH=%cd%\wget;%PATH%
    echo wget 安装完成。
) else (
    echo wget 已经安装。
)

:: 设置文字颜色为黄色（前景色：黄色，背景色：黑色）
color e0

:: 显示菜单选项
echo 1  编程依赖工具箱      ^|    2  ascii艺术工具箱（原创）
echo -------------------------------------------------
echo 3  人脸分析库         ^|    4  摸鱼神器
echo -------------------------------------------------
echo 5  五子棋(命令行)     ^|    6  字符大战
echo -------------------------------------------------
echo 7  Next编程语言      ^|    8  python天气
echo -------------------------------------------------
echo 9  C--编程语言

:: 设置文字颜色为白色（前景色：白色，背景色：黑色）
color 07

:: 提示输入编号
echo.
set /p num=请输入编号：

:: 根据输入执行不同的操作，下载到桌面目录
if "%num%"=="1" (
    echo 正在下载 编程依赖工具箱...
    wget -O "%desktop%\xlings-main.zip" https://gh-proxy.com/raw.githubusercontent.com/tianhukj/gjx/refs/heads/main/xlings-main.zip
) else if "%num%"=="2" (
    echo 请访问 https://www.github.com/tianhukj/asciimj
) else if "%num%"=="4" (
    echo 正在下载 摸鱼神器...
    wget -O "%desktop%\genact-1.4.2-x86_64-pc-windows-msvc.exe" https://gh-proxy.com/raw.githubusercontent.com/tianhukj/gjx/refs/heads/main/genact-1.4.2-x86_64-pc-windows-msvc.exe
) else if "%num%"=="5" (
    echo 正在下载 五子棋(命令行)...
    wget -O "%desktop%\wuzi-master.zip" https://gh-proxy.com/raw.githubusercontent.com/tianhukj/gjx/refs/heads/main/wuzi-master.zip
) else if "%num%"=="6" (
    echo 正在下载 字符大战...
    wget -O "%desktop%\字符大战Pre-alpha1.0.zip" https://gh-proxy.com/raw.githubusercontent.com/tianhukj/gjx/refs/heads/main/字符大战Pre-alpha1.0.zip
) else if "%num%"=="8" (
    echo 正在下载 python天气...
    wget -O "%desktop%\prettytable-colorama-master.zip" https://gh-proxy.com/raw.githubusercontent.com/tianhukj/gjx/refs/heads/main/prettytable-colorama-master.zip
) else if "%num%"=="9" (
    echo 正在下载 C--编程语言...
    wget -O "%desktop%\c--.exe" https://gh-proxy.com/raw.githubusercontent.com/tianhukj/gjx/refs/heads/main/c--.exe
) else (
    echo 无效的编号，请重新运行并输入有效的编号。
)

pause
