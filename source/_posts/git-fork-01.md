---
title: 如何同步 Github fork 出来的分支
date: 2017-05-12
tags:
  - Git
---

项目 fetch 到本地，通过命令行的方式 merge
跟上游仓库同步代码之前，必须配置过 remote，指向上游仓库 。

```bash
git remote add upstream https://github.com/project.git
```
从上游仓库获取到分支及相关的提交信息，它们将被保存在本地的 upstream/master 分支

```bash
git fetch upstream

# remote: Counting objects: 75, done.
# remote: Compressing objects: 100% (53/53), done.
# remote: Total 62 (delta 27), reused 44 (delta 9)
# Unpacking objects: 100% (62/62), done.
# From https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY
#  * [new branch]      master     -> upstream/master
```
切换到本地的 master 分支

```bash
git checkout master
```
把 upstream/master 分支合并到本地的 master 分支，本地的 master 分支便跟上游仓库保持同步了，并且没有丢失你本地的修改。

```bash
git merge upstream/master
```
提示：同步后的代码仅仅是保存在本地仓库，记得 push 到 Github 哟。