# FlarumAiChat 前端编译指南

## 问题说明

当前扩展的配置项不显示，是因为前端 JavaScript 文件需要重新编译。

## 解决方案

### 方法一：使用自动脚本（推荐）

#### Windows 系统
双击运行 `build-frontend.bat` 文件

#### Linux/Mac 系统
```bash
chmod +x build-frontend.sh
./build-frontend.sh
```

### 方法二：手动编译

#### 1. 安装 Node.js

如果您还没有安装 Node.js，请访问：
- 官网：https://nodejs.org/
- 推荐下载 LTS（长期支持）版本

#### 2. 编译步骤

```bash
# 进入 js 目录
cd flarumaichat/js

# 安装依赖
npm install

# 编译前端资源
npm run build
```

#### 3. 验证编译结果

编译成功后，`js/dist/` 目录下应该有以下文件：
- admin.js
- admin.js.map
- forum.js
- forum.js.map

### 方法三：使用预编译版本

如果您无法安装 Node.js，可以：
1. 在另一台有 Node.js 的电脑上编译
2. 将编译好的 `js/dist/` 目录复制回来

## 编译完成后的操作

1. 在 Flarum 后台禁用扩展
2. 清除缓存：
   ```bash
   php flarum cache:clear
   ```
3. 重新启用扩展
4. 刷新浏览器页面

现在配置项应该可以正常显示了！

## 常见问题

### Q: npm install 很慢怎么办？
A: 可以使用国内镜像：
```bash
npm install --registry=https://registry.npmmirror.com
```

### Q: 编译报错怎么办？
A: 请确保：
- Node.js 版本 >= 14
- npm 版本 >= 6
- 网络连接正常

### Q: 还是看不到配置项？
A: 请检查：
1. 浏览器控制台是否有 JavaScript 错误
2. Flarum 缓存是否已清除
3. 扩展是否已重新启用
