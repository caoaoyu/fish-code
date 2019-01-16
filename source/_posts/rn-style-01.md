---
title: Navigative Style
date: 2017-05-19
tag: #ReactNative#
---
```
{
  navBarTextColor：'＃000000'
  //更改标题的文本颜色（记住跨推）
  navBarTextFontFamily：'font-name'
  //更改标题字体
  navBarBackgroundColor：'＃f7f7f7'
  //更改导航栏的背景颜色（记住跨推）
  navBarButtonColor：'＃007aff'
  //更改导航栏按钮的颜色（例如，后退按钮）（记住跨推）
  navBarHidden：false
  //使导航栏隐藏
  navBarHideOnScroll：false
  //使导航栏仅在用户开始滚动后隐藏
  navBarTranslucent：false
  //使nav bar半透明，最好用drawUnderNavBar：true
  navBarTransparent：false
  //使nav bar透明，最好使用drawUnderNavBar：true，
  navBarNoBorder：false
  //隐藏导航栏底部边框（发线）。默认为false
  drawUnderNavBar：false，
  //绘制导航栏下的屏幕内容，最好使用navBarTranslucent：true
  drawUnderTabBar：false，
  //绘制标签栏下的屏幕内容（标签栏总是半透明的）
  statusBarBlur：false，//模糊状态栏下的区域，最好使用navBarHidden：true
  navBarBlur：false，
  //模糊整个导航栏，最好使用drawUnderNavBar：true
  tabBarHidden：false，
  //使屏幕内容隐藏标签栏（记住跨推）
  statusBarHideWithNavBar：false
  //如果导航栏也被隐藏，则隐藏状态栏，对navBarHidden有用：true
  statusBarHidden：false，
  //使状态栏隐藏，无论导航栏状态如何
  statusBarTextColorScheme：'dark'，
  //状态栏的文本颜色，'dark'/'light'（记住跨过的按钮）
  statusBarTextColorSchemeSingleScreen：'light'
  //与statusBarTextColorScheme相同，但不会记住跨推
  navBarSubtitleColor：'red'，
  // subtitle color
  screenBackgroundColor：'white'，
  //默认屏幕颜色，在渲染实际的反应视图之前可见
  orientation：'portrait'
  //将特定的方向设置为模态，并将所有屏幕推送到它。默认值：'auto'。支持的值：'auto'，'landscape'，'portrait'
  //仅限iOS
  disabledBackGesture：false
  // default：false。禁用后退手势（滑动手势）以弹出顶部屏幕。
  screenBackgroundImageName：'<Images of images in Images.xcassets>'，//可选。默认屏幕背景图像。
  navBarButtonFontSize：20
  //更改字体大小导航栏按钮（例如，后退按钮）（记住跨推）
  navBarButtonFontWeight：'500'
  //更改字体重量导航栏按钮（例如，后退按钮）（记住跨推）
  navBarLeftButtonFontSize：17
  //更改左侧导航栏按钮的字体大小
  navBarLeftButtonColor：'red'
  //更改左侧导航栏按钮的颜色
  navBarLeftButtonFontWeight：'400'
  //更改左侧导航栏按钮的字体重量
  navBarRightButtonFontSize：17
  //更改右侧导航栏按钮的字体大小
  navBarRightButtonColor：'blue'
  //更改右侧导航栏按钮的颜色
  navBarRightButtonFontWeight：'600'
  //更改右侧导航栏按钮的字体重量
  //仅限Android
  navigationBarColor：'＃000000'
  //更改底部本机导航栏的背景颜色。
  navBarTitleTextCentered：true
  // default：false。中心标题。
  topBarElevationShadowEnabled：false
  // default：true。禁用在Lolipop及以上的TopBar高程阴影
  statusBarColor：'＃000000'
  //更改状态栏的颜色。
  collapsingToolBarImage：“http://lorempixel.com/400/200/”
  //折叠工具栏图像
  collapsingToolBarImage：require（'../../ img / topbar.jpg'）
  //折叠工具栏图像。使用网址或需要本地图像。
  collapsingToolBarCollapsedColor：'＃0f2362'
  //折叠工具栏稀松布颜色。
}
```