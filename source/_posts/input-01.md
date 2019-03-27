---
title: 阻止 input 默认提交事件
date: 2017-02-08
tag: #jQuery#
---

总结几条默认事件：
1、 如果表单里有一个 type=”submit” 的按钮，或者只有一个 type=”text” 的input ，不管按钮是什么type,回车键生效。

```<form id="form">
    <input type="text" name="t1" />
</form>```
2、 如果按钮是用 button ，并且没有加 type，默认 type=”submit” 。

```<form id="form">
    <input type="text" name="t1" />
     <button>提交</button>  
</form>```
阻止事件 例：

```$('.a').keypress(function(e) {
                if (e.keyCode == 13) {
                    e.preventDefault();
                    // return false;
                }
            });
or

<form name="myform" action="" onkeydown="if(event.keyCode==13){return false;}">
<input type=text name=user>
</form>```