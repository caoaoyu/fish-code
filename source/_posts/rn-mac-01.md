---
title: Mac OSX RN 环境搭建遇到的问题
date: 2017-02-08
tags:
  - ReactNative
---

react-native init AwesomeProject 命令报错

报错1：
```shell
Looks like React Native project already exists in the current
folder. Run this command from a different folder or remove node_modules/react-native
```
就把 RN 全删了重新来一遍
rm -rf node_modules/react-native

报错2：
```
npm WARN react-native@0.41.2 requires a peer of react@~15.4.0 but none was installed.
缺少 react@~15.4.0
```

解决：

npm install
报错3：
```
Looks like you installed react-native globally, maybe you meant react-native-cli? 
To fix the issue, run:
```
让全局安装就乖乖安装好了 –！

解决：

sudo npm install -g react-native-cli
react-native run-ios 报错
其实刚开始报的错是 watchman 不工作
之后 brew install watchman

报错1：
```Warning: watchman-4.7.0 already installed, it's just not linked.```
解决：

```
brew link watchman
Linking /usr/local/Cellar/watchman/4.7.0...
Error: Could not symlink bin/watchman
Target /usr/local/bin/watchman
already exists. You may want to remove it:
  rm '/usr/local/bin/watchman'
To force the link and overwrite all conflicting files:
  brew link --overwrite watchman
To list all files that would be deleted:
  brew link --overwrite --dry-run watchman

```