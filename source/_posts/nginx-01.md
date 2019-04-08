---
title: nginx 配置 location
date: 2016-10-31
tags:
  - jQuery
---

安装目录下config文件夹
找到 ```nginx.conf```
```javascript
upstream python_servers {
        server 8000 max_fails=2 fail_timeout=10s;
    } （映射到的端口）
    upstream h5_servers {
        server 4000 max_fails=2 fail_timeout=10s;
    }
    upstream XXX_servers {
        server 182.92.70.38:80 max_fails=2 fail_timeout=10s;
    }
    server {
        listen       80; （监听80端口）
        server_name  www.XXX localhost; （设置访问域名）
       location / {
            proxy_pass http://h5_servers;
            include proxy/proxy.conf;
            break; （监听）
        }
        location /api_python/ {
            proxy_pass http://python_servers/;
            include proxy/proxy.conf;
            break;
        }
        location /XXX(检测到的字符)/ {
            proxy_pass http://cms_servers/;
            include proxy/proxy.conf;
            break;
        }
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   html;
        }
```

C盘 

```
Windows system32 drivers etc host
192.168.16.49 WWW.xxxx
```
指向本地