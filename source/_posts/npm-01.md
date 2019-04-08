---
title: NPM报错 Segmentationfault:11
date: 2016-11-25
tags:
  - NPM
---

用n命令更新node，更新中间中断了，在执行node -v或者npm -v出现下面错误
```Segmentation fault: 11```
执行n命令，没有反应，解决方法
用n命令重新设置要使用的版本即可。
例如
```sudo n 5.10.1```
最好不要用 N 不要用 N 不要用N 重要的事情说三遍。 去官网下载安装就好~~~~
