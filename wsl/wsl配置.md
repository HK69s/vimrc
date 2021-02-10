# wsl 配置

## shell配置

安装zsh

```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install zsh
```

安装oh-my-zshwsl 配置

```bash
sudo apt-get install curl
sudo apt-get install wget
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

安装zsh主题：

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

配置powerlevel10k

```bash
vim ~/.zshrc
```

选择主题为下载的主题

```bash
ZSH_THEME=powerlevel10k/powerlevel10k
```

安装字体：Powerlevel10k 作者推荐使用 Meslo Nerd Font字体，Download these four ttf files:

[MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Regular.ttf)

[MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Bold.ttf)

[MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Italic.ttf)

[MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Bold Italic.ttf)

## 配置terminal终端

[主题](https://terminalsplash.com/)

[终端颜色](https://windowsterminalthemes.dev/)

颜色修改后直接修改colorscheme中的名字即可。

WSL配置字体其实就是配置终端的字体，点击设置会自动跳转到一个json格式的文档。

```js
"defaults":
        {
            // Put settings here that you want to apply to all profiles.
            "acrylicOpacity": 0.8, //背景透明度
            "useAcrylic": true, // 启用毛玻璃
            "backgroundImage": "D:\\Disk\\image\\人物\\miku.png", //背景图片
            "backgroundImageOpacity": 0.5, //图片透明度
            "backgroundImageStretchMode": "uniform", //填充模式
            // "icon": "C:\\Users\\You_name\\Pictures\\最近\\1121490.png", //图标自己修改
            "fontFace": "MesloLGS NF", //字体
            "fontSize": 14, //文字大小
            // "colorScheme": "Solarized Light", //主题
            "cursorColor": "#FFFFFF", //光标颜色
            "cursorShape": "filledBox", //光标形状 bar
            "backgroundImageAlignment" : "bottomRight"
        }
```

## oh my zsh插件

#### git

[git plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)

提供丰富的 git 别名与几个有用的函数

#### github

[github plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/github)

提供几个快捷的函数

#### zsh-syntax-highlighting

[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

终端命令语法高亮

克隆

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#### autojump

[autojump](https://github.com/wting/autojump)

 可以记录下来你之前 `cd` 到访过的所有目录，下次要去那个目录时不需要输入完整的路径，直接 `j somedir` 即可到达，甚至那个目标目录的名称只输入开头也可以。

[安装方式](https://github.com/wting/autojump#installation)

#### zsh-autosuggestions

[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

终端命令自动推荐，会记录下来之前使用过的命令，当你输入开头时，会暗色提示之前的历史命令供你选择，可直接按右方向键选中该命令。

克隆

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

配置插件

```bash
vim ~/.zshrc

plugins=(
  sudo
  git
  github
  autojump
  zsh-syntax-highlighting                                                       zsh-autosuggestions
  )
```

