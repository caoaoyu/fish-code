---
title: Django-error-01
date: 2017-03-16
tags:
  - Django
---
```python
'dist/style/main.css' could not be found
```
解决：
```python
STATICFILES_DIRS =( os.path.join(BASE_DIR, 'static'), )
```
看看这句写对了没。
```python
AttributeError: 'module' object has no attribute ‘login'
```
解决：
```python
def 定义看看哪里是不是有错
```
<!-- django 模板 python：语法
元组：key:value

```python
text = {}
text[‘list’] = [
    (‘msg1’,’内容1’ ),
    ( ‘msg2’,’内容2’ ),
    ( ‘msg3’,’内容3’ )]
``` -->