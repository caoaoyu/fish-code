---
title: 使用 GM 来做图片拼接
date: 2017-12-25
tag: #GM#
---

#### GraphicsMagick and ImageMagick for node

实例：

```javascript
gm()
  .append(files_path)
  .write(`one.png`, (error) => {
    if(!error) {
      resolve(unionid);
      return
    }
    reject(error)
  });
```
files_path 可以是一组图片
也可以写多个 append 来拼接图片

```javascript
append ：
gm("img.png")
  .append("another.jpg")
  .append(true)
  // 从左到右拼接图片
gm("img.png")
  .append("another.jpg")
  // 从上到下拼接图片
```

* outPut ：
    * write - 将处理后的图像数据写入指定的文件名
    * buffer - 提供一个ReadableStream与处理的图像数据
    * toBuffer - 将图像作为缓冲区而不是流返回