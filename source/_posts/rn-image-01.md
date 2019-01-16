
---
title: Image source size {42, 32} does not match loaded image 
date: 2017-06-19
tag: #ReactNative#
---

错误原因:

检查资源文件，a@2x.png分辨率不是a.png的两倍，修改资源文件确保@2x是其两倍，@3x分辨率是其三倍之后，问题解决。