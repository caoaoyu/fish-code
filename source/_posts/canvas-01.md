---
title: canvas弧形描边渐变
date: 2019-05-23
tag: #canvas#
---

<canvas id="canvas" width="200" height="200">
</canvas>

<script type="text/javascript">
window.addEventListener('load',canvasApp,false);
function canvasApp(){
    var theCanvas = document.getElementById('canvas')
   	var context = theCanvas.getContext("2d")
    drawScreen(context);
};
function drawScreen(context){
        var gr = context.createRadialGradient(50,50,25,100,100,100);
        //添加颜色端点
        gr.addColorStop(0,'rgb(255,0,0)');
        gr.addColorStop(.5,'rgb(0,255,0)');    
        gr.addColorStop(1,'rgb(255,0,0)');        
        //应用fillStyle生成渐变
        context.strokeStyle = gr;
        context.arc(100,100,50,(Math.PI/180)*0,(Math.PI/180)*360,false);
        context.stroke();
    }
</script>

```javascript
<script type="text/javascript">
window.addEventListener('load',canvasApp,false);
function canvasApp(){
    var theCanvas = document.getElementById('canvas')
   	var context = theCanvas.getContext("2d")
    drawScreen(context);
};
function drawScreen(context){
        var gr = context.createRadialGradient(50,50,25,100,100,100);
        //添加颜色端点
        gr.addColorStop(0,'rgb(255,0,0)');
        gr.addColorStop(.5,'rgb(0,255,0)');    
        gr.addColorStop(1,'rgb(255,0,0)');        
        //应用fillStyle生成渐变
        context.strokeStyle = gr;
        context.arc(100,100,50,(Math.PI/180)*0,(Math.PI/180)*360,false);
        context.stroke();
    }
</script>
<canvas id="canvas" width="500" height="500">
</canvas>
```