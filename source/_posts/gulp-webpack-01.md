---
title: Gulp-webpack 构建
date: 2017-03-10
tags:
  - Gulp
---

之前做了一个项目，使用 Gulp 进行构建，Gulp 只能说指定一个文件或者打包一些文件，这个时候好想使用 webpack 的模块化打包啊，简直不要太好用，所以我就找到了 “ gulp-webpack “

安装：
```npm install gulp-webpack```
配置
在 gulp 的配置方面，是有很多种的,这只是其中一种：
```javascript
var gulp = require('gulp');
var webpack = require('gulp-webpack');
var gulp = require('gulp');
var webpack = require('gulp-webpack');
gulp.task('default', function() {
  return gulp.src('src/entry.js')
    .pipe(webpack({
      entry: {
        app: 'src/app.js',
        test: 'test/test.js',
      },
      output: {
        filename: '[name].js',
      },
    }))
    .pipe(gulp.dest('dist/'));
});
```
第一个案例就完成了，你就可以 happy 的去模块化打包了

思考：
但是 webpack 的打包也有一个硬伤，是什么？当然是多入口啊，要一个一个去指定，我要每个都写名字，这要多么麻烦？所以我就利用了 gulp 的 gulp.src 的机制

```javascript
gulp.task('js', function() {
    return gulp.src(['src/*.js'])
        .pipe(named())
        .pipe(webpack({
            resolve:{
                extentions:["",".js"],
                modulesDirectories: [
                    'node_modules',
                ],
            },
            module: {
                loaders: [
                    { test: /\.js$/, loader: 'babel-loader',query:{presets:['es2015']}},
                    { test: /\.css$/, loader: 'style-loader!css-loader' }
                ]
            },
        }))
        .pipe(uglify()) //压缩混淆 JS
        .pipe(gulp.dest('dist/js'));
})
```
它会自己解析 src 目录下的所有 JS 文件，这样就省得一个一个去指定 entry 了，而且我也并没有去配置 webpack.config.js
缺点是，gulp 只会加载 src 目录下的文件，所以我只能在 src 中建立文件夹，require 文件夹中的 JS。
可以直接在 gulpfile 中去配置，但是遗憾的是就不能用 webpack的pluging插件系统了，但是我觉得我的目的只是模块化，与简化入口，所以我是实现了，但是我并不知这样是否好，只是我解决一个问题的方法

结尾：
以上就是我的使用教程啦~
