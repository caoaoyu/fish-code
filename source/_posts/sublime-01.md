
---
title: 浏览器快捷键绑定
date: 2016-09-28
tag: #Sublime#
---
1. 首先打开 Preferences --> 按键绑定 – 用户
```
[ { "keys": ["ctrl+shift+c"], "command": "copy_path" }, 
//firefox 
{ "keys": ["f1"], "command": "side_bar_files_open_with", "args":
 { "paths": [], "application": "C:\\Program Files (x86)\\Mozilla Firefox\\firefox.exe", 
//浏览器地址
 "extensions":".*" //匹配任何文件类型 
 }
},
  //chrome 
{ "keys": ["f2"], "command": "side_bar_files_open_with", "args":
 { "paths": [], "application": "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "extensions":".*" //匹配任何文件类型 
 }
}]
```