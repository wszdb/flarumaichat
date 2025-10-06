@echo off
echo ========================================
echo FlarumAiChat 前端编译脚本
echo ========================================
echo.

cd /d "%~dp0js"

echo [1/3] 检查 Node.js 环境...
where npm >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo 错误: 未安装 Node.js
    echo 请访问 https://nodejs.org/ 下载安装
    pause
    exit /b 1
)

npm --version
echo.

echo [2/3] 安装依赖包...
call npm install
if %ERRORLEVEL% NEQ 0 (
    echo 错误: 依赖安装失败
    pause
    exit /b 1
)
echo.

echo [3/3] 编译前端资源...
call npm run build
if %ERRORLEVEL% NEQ 0 (
    echo 错误: 编译失败
    pause
    exit /b 1
)
echo.

echo ========================================
echo 编译完成！
echo ========================================
echo 请在 Flarum 后台重新启用扩展
pause
