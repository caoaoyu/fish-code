---
title: SASS安装
date: 2016-08-03
tag: #SASS#
---

#### Ruby安装

SASS是依赖于Ruby的 , 因此在安装SASS之前 , 必须先在Windows内安装Ruby
Ruby环境内有个包管理器――GEM , 它类似于Nodejs下的NPM , 它随着Ruby一起被安装 , 因此不需要额外安装 ,

安装成功 , 会发现在开始菜单里有了Ruby , 在命令行里输入：

```gem install sass```
安装完成以后在命令行输入

```sass -v```
会显示出安装的版本号 , 这样SASS就安装完成了 , 不过要注意 , 电脑必须能够访问到互联网 , 因为此时GEM会从远程服务器上下载

#### Compass安装

简单说 , Compass是Sass的工具库(toolkit)Sass本身只是一个编译器 , Compass在它的基础上 , 封装了一系列有用的模块和模板 , 补充Sass的功能 , 它们之间的关系 , 有点像Javascript和jQuery、Ruby和Rails、python和Django的关系 ,
compass是依赖于sass的 , 因此必须在完成sass的安装后才能安装compass , 安装方式同SASS , 继续命令行输入：

```gem install compass```
安装完成以后在命令行输入

```compass -v```
会显示出安装的版本号 , 这样就安装完成了

新建项目

接下来 , 要创建新的Compass项目 , 假定它的名字叫做myproject , 那么在命令行键入：

```compass create myproject```
当前目录中就会生成一个myproject子目录。
进入该目录：

```cd myproject```
里面有一个config.rb文件 , 这是项目的配置文件。还有两个子目录sass和stylesheets , 前者存放Sass源文件 , 后者存放编译后的css文件。

编译

因为我们写出来的是后缀名为scss的文件 , 只有编译成css文件 , 才能用在网站上 , Compass的编译命令是:

　　compass compile
该命令在项目根目录下运行 , 会将sass子目录中的scss文件 , 编译成css文件 , 保存在stylesheets子目录中

默认状态下 , 编译出来的css文件带有大量的注释。但是 , 生产环境需要压缩后的css文件 , 这时要使用–output-style参数。

```compass compile --output-style compressed```
Compass只编译发生变动的文件 , 如果重新编译未变动的文件 , 需要使用–force参数

```compass compile --force```
除了使用命令行参数 , 还可以在配置文件config.rb中指定编译模式。

```output_style = :expanded```
:expanded模式表示编译后保留原格式 , 其他值还包括:nested、:compact和:compressed。进入生产阶段后 , 就要改为:compressed模式

也可以通过指定environment的值（:production或者:development） , 智能判断编译模式。
```
environment = :development
　　output_style = (environment == :production) ? :compressed : :expanded
```
在命令行模式下 , 除了一次性编译命令 , compass还有自动编译命令

```compass watch```
运行该命令后 , 只要scss文件发生变化 , 就会被自动编译成css文件

为一个已经存在的项目（Rails）添加compass

```compass init```



#### 什么是SASS

SASS是Syntactically Awesome Stylesheete的缩写 , 它是css的一个开发工具 , 提供了很多便利和简单的语法 , 让css看起来更像是一门语言 , 这种特性也被称为“css预编译” , 它的主要设计思想是让我们可以按照编程的思路编写自己的样式 , 然后通过“编译器”生成我们所需要的css文件 ,
SASS起初语法采用缩进排列形式 , 但对于设计师来说既不直观还容易出现错误 , 在吸取了Less的一些特性基础上 , SASS3.0有了大幅改进 , 也就是现在的SCSS ,

SASS具有某些编程的思想（比如变量、嵌套、函数、运算等等） , 通过它再生成相应的CSS , 使得CSS的开发 , 变得简单和可维护 , 而Comapss是基于SASS的一个库 , Compass相对于SASS的关系大致相当于 JQuery：JS的关系 ,
