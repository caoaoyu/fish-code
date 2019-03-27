---
title: Mac 安装SASS没有反应
date: 2016-11-09
tag: #SASS#
---
今天因为配置 Webstorm 的 file watch 功能,需要安装SASS
因为已经安装过Ruby，所以就直接 gem install sass 但是完全没有任何反应
无奈ctrl +v N次 ，依旧没有任何效果，百度一下才发现,命令是没有马上回显消息的
安装程序其实在后台正常运行，只是控制台没有消息而已，耐心等待一段时间才会看到安装成功或者是失败的消息
所以其实没有任何问题，但是可以安装的时候 加上命令最后 -V 可以显示详细的日志，可以发现安装中到底有哪些问题
在安装过程中速度缓慢，进程停留在1%，最后报错
```
"ERROR:  While executing gem ... (Gem::RemoteFetcher::UnknownHostError)
```
timed out (https://api.rubygems.org/gems/sass-3.4.22.gem)"
百度之后，说是 gem 在国内的镜像不能用，不过还有淘宝改了其镜像，步骤如下：
```
$ gem sources --remove https://rubygems.org/
$ gem sources -a https://ruby.taobao.org/
$ gem sources -l
```
结果：
```*** CURRENT SOURCES ***     https://ruby.taobao.org```
之后再进行如下命令：
```sudo gem install sass```
安装后 SASS 在Webstorm 中 commit + ， 快捷键打开设置界面 Tools 中的 file watchers 点击 + 之后需要输入一个 Program
因为是 MAC 找了半天也没找到 SASS安装的位置 ，可以在命令行中 which sass 可以直接显示出位置 ，将位置复制到刚在的选项中就 ok 了。