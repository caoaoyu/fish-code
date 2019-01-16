---
title: 'source ~/.zshrc  autoload: command not found'
---
#### 有可能导致的原因是 Mac 没有 将 zsh 设置为 默认的 shell

##### 修改

```
1. chsh -s /usr/local/bin/zsh
2. vim ~/.zshrc
3. source ~/.zshrc

```

reset shell

end