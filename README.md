# vim

zsh配置
```bash
cd /usr/share/
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-history-substring-search.git
```

这是我vim配置方便下载

添加了点配置。

在zshrc中添加以下代码：

```bash
# ryan
export TERM="xterm-256color"
# ryan
alias tmux="tmux -2"
```

在我的~/.profile中

```bash
# ryan 256 color support
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
  else
    export TERM='xterm-color'
fi
```
