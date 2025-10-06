# FlarumAiChat

AI-powered chat extension for Flarum, integrating advanced AI conversation capabilities.

## Installation

Install with composer:

```bash
composer require wszdb/flarumaichat
```

## ⚠️ 重要：首次使用需要编译前端

在安装扩展后，需要编译前端资源才能正常使用：

```bash
# 方法1: 使用自动脚本
./build-frontend.sh  # Linux/Mac
# 或
build-frontend.bat   # Windows

# 方法2: 手动编译
cd js
npm install
npm run build
```

详细说明请查看 [BUILD-GUIDE.md](BUILD-GUIDE.md)

## Configuration

1. Enable the extension in your Flarum admin panel
2. Configure your OpenAI API key in the extension settings
3. Customize the AI behavior and prompts as needed

## Features

- AI-powered automated responses
- Intelligent conversation handling
- Customizable AI behavior
- Multi-language support

## License

MIT License

## Author

wszdb

## Credits

Based on the original [flarum-chatgpt](https://github.com/muhammedsaidckr/flarum-chatgpt) by Muhammed Said Cakir.
