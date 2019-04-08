---
title: 微信网页开发 - 网页授权
date: 2017-12-20
tags:
    - wechatMP
---

如果用户在微信客户端中访问第三方网页，可以通过微信网页授权机制，来获取用户基本信息。

* 关于网页授权的两种scope的区别说明
  * 以 snsapi_base 为scope发起的网页授权，是用来获取进入页面的用户的openid的，并且是静默授权并自动跳转到回调页的。用户感知的就是直接进入了回调页;
  * 以 snsapi_userinfo为scope 发起的网页授权，是用来获取用户的基本信息的。但这种授权需要用户手动同意，并且由于用户同意过，所以无须关注，就可在授权后获取该用户的基本信息。

步骤
* 用户同意授权，获取code
* 通过code换取网页授权access_token
* 拉取用户信息(需scope为 snsapi_userinfo)
* 用户同意授权，获取code
* 引导关注者打开如下页面：

```
  https://open.weixin.qq.com/connect/oauth2/authorize?appid=APPID&redirect_uri=REDIRECT_URI&response_type=code&scope=SCOPE&state=STATE#wechat_redirect;

// 若提示“该链接无法访问”，请检查参数是否填写错误，是否拥有scope参数对应的授权作用域权限。
// 尤其注意：由于授权操作安全等级较高，所以在发起授权请求时，微信会对授权链接做正则强匹配校验，如果链接的参数顺序不对，授权页面将无法正常访问
```

> 用户未授权会弹出微信授权框， 同意授权会自动跳转到 redirect_uri 中的 回调 URL， 并且附带 code，state 参数

注意 code 可在用来获取 token code 只能使用一次

#### 参数说明
|参数|必须 |说明|
|---|---:|---:|
|appid	|是|	公众号的唯一标识|
|redirect_uri	|是|	授权后重定向的回调链接地址， 请使用 urlEncode 对链接进行处理|
|response_type	|是|	返回类型，请填写code|
|scope	|是	|应用授权作用域，snsapi_base or snsapi_userinfo
|state	|否	|重定向后会带上state参数，最多128字节|
|#wechat_redirect	|是	|无论直接打开还是做页面302重定向时候，必须带此参数|

通过code换取网页授权access_token
获取code后，请求以下链接获取access_token

##### 拉取用户信息(需scope为 snsapi_userinfo)
```
http：GET（请使用https协议） 
https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN
到这里就可以获取到用户信息了。
```

