---
title: Git-坑-1
date: 2017-03-16
tag: #Git#
---
错误 ：

```bash
warning: LF will be replaced by CRLF in index.php.
The file will have its original line endings in your working directory.
```
解决：

这个警告是自动替换的一个选项
命令: ```bash$ git config --global core.autocrlf  false```
错误：

```bash
$ git push origin
fatal: The current branch master has no upstream branch.
To push the current branch and set the remote as upstream, use
```
解决：

```bash
git push --set-upstream origin master```
