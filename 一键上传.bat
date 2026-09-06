@echo off
chcp 65001 >nul
echo ========================================
echo   基层治理模拟器 - 一键上传 GitHub
echo ========================================
echo.

cd /d "C:\Users\31315\OneDrive\桌面\基层"

echo [1/3] 正在添加文件...
"C:\Program Files\Git\bin\git.exe" add .

echo [2/3] 正在提交...
"C:\Program Files\Git\bin\git.exe" commit -m "更新：%date% %time%"

echo [3/3] 正在推送到 GitHub...
for /f "delims=" %%i in ('"C:\Program Files\GitHub CLI\gh.exe" auth token') do set TOKEN=%%i
"C:\Program Files\Git\bin\git.exe" push https://%TOKEN%@github.com/yyukii77/grassroots-governance-simulator.git main

echo.
echo ========================================
echo   上传完成！
echo   在线地址: https://yyukii77.github.io/grassroots-governance-simulator/
echo ========================================
echo.
pause
