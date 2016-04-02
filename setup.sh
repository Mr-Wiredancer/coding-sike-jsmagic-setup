#!/usr/bin/env bash
export SHELL=/bin/zsh # somehow coding set this wrong

rm -rf .git # unmake ~/workspace a git repository

echo "正在安装 nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
echo 'export NVM_NODEJS_ORG_MIRROR="https://npm.taobao.org/dist"' >> ~/.zshrc
echo 'registry = https://registry.npm.taobao.org' > ~/.npmrc

echo ""
echo "正在安装 Node.js 4"
. ~/.nvm/nvm.sh
export NVM_NODEJS_ORG_MIRROR="https://npm.taobao.org/dist"
nvm install 4

echo ""
echo "你的 coding 环境已经配置好，在继续使用之前，请关掉这个终端窗口，重新打开一个新的终端窗口"