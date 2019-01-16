---
title: 固定右侧边栏
date: 2017-03-10
tag: #javascript#
---

需求：右侧栏固定，并且不能挡到下面 div
<!-- 右侧宽度自适应 begin-->
```javascript
    function Adaptive() {
        var $elm = $('.sidebar');
        
        //需要先计算距离导航顶部的距离，以免浮动导致飘出
        var startPos = $elm.offset().top;
        
        //浮动肯定的一点就是，要根据 Scroll 来浮动，造成"固定"的现象
        $(window).scroll(function() {
            var leftHeight = $('.a-ts').height();
            var scroll = $(window).scrollTop();
            
            if (scroll <= startPos) {
                $elm.removeClass("right-bottom")
            }else if (num >= leftHeight){
                $elm.removeClass("right-bottom")
                $elm.addClass("right-top")
            } else{
                $elm.removeClass("right-top")
                $elm.addClass("right-bottom");
            }
        });
    };
```
#### 优化
计算屏幕宽度，移动端可不需要浮动了，所以在这里需要做个判断
```$(window).width() >992? $('.right-sidebar').addClass('tag'):$('.right-sidebar').removeClass('tag');```
当页面宽度一改变，就进行距离左边距距离的判断
```javascript
var leftAdaptive = $('.a-st').width()+30+$('.a-st').offset().left;
       window.onresize = function () {
           var $elm = $('.sidebar');
           $(window).width() >992? $elm.addClass('tag'):$elm.removeClass('tag');
           Adaptive();
   };
```

当屏幕宽度肯定不是手机了~浮动 begin~
```javascript
if($('.sidebar').hasClass('tag') == true ){
    $(".right-nav-bottom").css("left",leftAdaptive)
    }else if ($(window).width() < 992){
        $elm.removeClass("right-nav-bottom")
        $elm.removeClass("right-nav-top")
        $elm.removeAttr('style');
    }
```

右侧栏宽高可不是固定的，那就要根据长短来进行计算什么时候滑动条到什么高度才可移动不然太长了可是会覆盖到下面的 div的哦~
```javascript
var sidebar = scroll+(sidebarHeight - 200);
var sidebarHeight = $elm.height();
 
function short(num) {
    if (scroll <= startPos) {
        $elm.removeClass("right-bottom")
        $elm.removeAttr('style');
    }else if (num >= leftHeight){
        $elm.removeClass("right-bottom")
        $elm.addClass("right-top")
        $elm.removeAttr('style');
    } else{
        $elm.removeClass("right-top")
        $elm.addClass("right-bottom");
        $(".right-nav-bottom").css("left",leftAdaptive)
    }
}
short(Sidebar)
```
3、最后
```javascript
<!-- 右侧宽度自适应 begin-->
    //判断屏幕宽度
    $(window).width() >992? $('.right-sidebar').addClass('tag'):$('.right-sidebar').removeClass('tag');
    function Adaptive() {
        var $elm = $('.sidebar');
        
        //计算距离导航顶部的距离
        var startPos = $elm.offset().top;
        
        //计算左边距
        var leftAdaptive = $('.a-st').width()+30+$('.a-st').offset().left;
       //当屏幕宽度肯定不是手机了~浮动 begin~
        if($('.sidebar').hasClass('tag') == true ){
            $(".right-nav-bottom").css("left",leftAdaptive)
        }else if ($(window).width() < 992){
            $elm.removeClass("right-nav-bottom")
            $elm.removeClass("right-nav-top")
            $elm.removeAttr('style');
        }
        
        //浮动肯定的一点就是，要根据 Scroll 来浮动，造成"固定"的现象
        $(window).scroll(function() {
            if($('.sidebar').hasClass('tag') == true ){
                var leftHeight = $('.a-ts').height();
                var sidebarHeight = $elm.height();
                var scroll = $(window).scrollTop();
                var longSidebar = scroll+(sidebarHeight - 200);
                function short(num) {
                    if (scroll <= startPos) {
                        $elm.removeClass("right-nav-bottom")
                        $elm.removeAttr('style');
                    }else if (num >= leftHeight){
                        $elm.removeClass("right-nav-bottom")
                        $elm.addClass("right-nav-top")
                        $elm.removeAttr('style');
                    } else{
                        $elm.removeClass("right-nav-top")
                        $elm.addClass("right-nav-bottom");
                        $(".right-nav-bottom").css("left",leftAdaptive)
                    }
                }
                sidebarHeight > 700? short(longSidebar):short(shortSidebar);
            }
        });
    };
```