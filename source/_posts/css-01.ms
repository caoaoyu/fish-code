---
title: css弧形描边
date: 2019-05-23
tag: #CSS#
---

```
<html>
<head>
    <div class='circle-box'>
        <div class="circle-bg">
            <div class="circle"></div>
            <div class="circle-mask"></div>
        </div>
        <div class="status"> 较差 </div>
    </div>
    <style>
        .circle-box {
            width: 248px;
            height: 124px;
            overflow: hidden;
            position: relative;
        }

        .circle-bg {
            z-index: 2;
            width: 100%;
            height: 248px;
            position: relative;
            border-radius: 50%;
            background: #e8f1ff;
            box-sizing: border-box;
        }

        .circle {
            position: absolute;
            left: 7px;
            top: 7px;
            z-index: 2;
            width: 234px;
            height: 234px;
            border-radius: 50%;
            transform: rotate(80deg);
            transition: transform 2s;
            box-sizing: border-box;
            background: #29bd7c;
            clip: rect(124px, auto, auto, auto);
        }

        .circle-mask {
            position: absolute;
            width: 218px;
            height: 218px;
            left: 50%;
            top: 50%;
            z-index: 3;
            border-radius: 50%;
            box-sizing: border-box;
            border: 7px solid #e8f1ff;
            transform: translate(-50%, -50%);
            background-color: #fff;
        }

        .status {
            position: absolute;
            bottom: 0;
            width: 100%;
            z-index: 4;
            font-size: 30px;
            text-align: center;
            color: #29bd7c;
        }
    </style>
    </body>
</html>
```