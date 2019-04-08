---
title: 命令行配置 - 显示分支以及高亮
date: 2017-07-03
tags:
  - Git
---

#### 命令行执行

```bash
    sudo vim /etc/profile
 ```
添加以下代码
```bash
find_git_branch () {
    local dir=. head
    until [ "$dir" -ef / ]; do
    if [ -f "$dir/.git/HEAD" ]; then
        head=$(< "$dir/.git/HEAD")
    if [[ $head = ref:\ refs/heads/* ]]; then
        git_branch=" (${head#*/*/})"
    elif [[ $head != '' ]]; then
        git_branch=" → (detached)"
    else
        git_branch=" → (unknow)"
    fi
    return
    fi
    dir="../$dir"
    done
    git_branch=''
}
PROMPT_COMMAND="find_git_branch; $PROMPT_COMMAND"
black=$'\[\e[1;30m\]'
red=$'\[\e[1;31m\]'
green=$'\[\e[1;32m\]'
yellow=$'\[\e[1;33m\]'
blue=$'\[\e[1;34m\]'
magenta=$'\[\e[1;35m\]'
cyan=$'\[\e[1;36m\]'
white=$'\[\e[1;37m\]'
normal=$'\[\e[m\]'
// 以上代表显示颜色配置
PS1="$white[$white@$green\h$white:$cyan\W$yellow\$git_branch$white]\$ $normal"
// PS1 代表最后生成在命令行的提示符样式
```
 
执行以下代码保存

```
source /etc/profile
```

完美显示~

#### 定制显示 Emoji 表情

* 打开终端
    * 点击菜单栏： 编辑 - 特殊字符 - 表情符号
    * Iterm： Edit- Emoj&symbols

选择将喜欢的 Emoji 表情符拖放至 PS1 = “”一行中的双引号内
依设置不同，拖放的表情符可能不会显示，但依然会发挥作用

附释：
```bash
\d ：代表日期，格式为weekday month date，例如："Mon Aug 1"
\H ：完整的主机名称。例如：我的机器名称为：fc4.linux，则这个名称就是fc4.linux
\h ：仅取主机的第一个名字，如上例，则为fc4，.linux则被省略
\t ：显示时间为24小时格式，如：HH：MM：SS
\T ：显示时间为12小时格式
\A ：显示时间为24小时格式：HH：MM
\u ：当前用户的账号名称
\v ：BASH的版本信息
\w ：完整的工作目录名称。家目录会以 ~代替
\W ：利用basename取得工作目录名称，所以只会列出最后一个目录
\# ：下达的第几个命令
\$ ：提示字符，如果是root时，提示符为：# ，普通用户则为：$
```
