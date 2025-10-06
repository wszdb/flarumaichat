#!/bin/bash

echo "========================================"
echo "FlarumAiChat 前端编译脚本"
echo "========================================"
echo ""

cd "$(dirname "$0")/js"

echo "[1/3] 检查 Node.js 环境..."
if ! command -v npm &> /dev/null; then
    echo "错误: 未安装 Node.js"
    echo "请访问 https://nodejs.org/ 下载安装"
    exit 1
fi

npm --version
echo ""

echo "[2/3] 安装依赖包..."
npm install
if [ $? -ne 0 ]; then
    echo "错误: 依赖安装失败"
    exit 1
fi
echo ""

echo "[3/3] 编译前端资源..."
npm run build
if [ $? -ne 0 ]; then
    echo "错误: 编译失败"
    exit 1
fi
echo ""

echo "========================================"
echo "编译完成！"
echo "========================================"
echo "请在 Flarum 后台重新启用扩展"
