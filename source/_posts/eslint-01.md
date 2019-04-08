---
title: Unexpected top level property "ecmaFeatures"
date: 2017-07-01
tags:
  - ESLint
---

#### ESLint 报错：
```javascript
ESLint configuration is invalid: - Unexpected top-level property "ecmaFeatures"
```
#### 原因：
ESLint 4.0 不支持 顶级 ecmaFeatures 属性
#### 解决：
降级依赖为 ESLint 3.9
