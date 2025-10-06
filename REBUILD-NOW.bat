@echo off
chcp 65001 >nul
echo ========================================
echo 强制重新编译前端资源
echo ========================================
echo.

cd /d "%~dp0js"

echo [1/3] 清理旧文件...
if exist "dist" rmdir /s /q dist
if exist "node_modules\.cache" rmdir /s /q node_modules\.cache
echo   完成
echo.

echo [2/3] 安装依赖...
call npm install
if %ERRORLEVEL% NEQ 0 (
    echo 错误: 依赖安装失败
    pause
    exit /b 1
)
echo.

echo [3/3] 编译...
call npm run build
if %ERRORLEVEL% NEQ 0 (
    echo 错误: 编译失败
    pause
    exit /b 1
)
echo.

echo ========================================
echo 验证结果...
echo ========================================
findstr /C:"wszdb-flarumaichat" "dist\admin.js" >nul
if %ERRORLEVEL% EQU 0 (
    echo [成功] 新的扩展ID已包含在编译文件中
) else (
    echo [失败] 编译文件中未找到新的扩展ID
)
echo.

echo 完成！请在 Flarum 后台重新启用扩展
pause
