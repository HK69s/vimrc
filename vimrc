set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
 
"Plugs下面加入你需要的vim-plug
"Plugin 'vim-airline/vim-airline'
"call vundle#end()
filetype plugin indent on

let mapleader=" "
" 开启高亮
syntax on

" 显示行号
set number

" 设置字体不会超出当前位置
set wrap

"当前行列高亮
"set cursorcolumn
set cursorline
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

"让打字显示
set showcmd

"用tab补全命令
set wildmenu

"在命令行输入/然后输入要搜索的进行高亮显示
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
"搜索完了 这两个= 是下一个 -是上一个并且聚焦
noremap = nzz
noremap - Nzz
"空格然后回车清空所有搜索结果
noremap <LEADER><CR> :nohlsearch<CR>

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8

"修改tab缩进距离
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
" 空格显示为"修改tab缩进距离
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
" 让光标下面一直有5行
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"命令模式下
"大写S退出
map S :w<CR>
map s <nop>
"大写Q退出
map Q :q<CR>
"加载vim配置
map R :source $MYVIMRC<CR> 

"分屏 sr向右分屏 sl向左分屏幕 su向上分屏 sd 向下分屏
map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>

"分屏移动 Ctrl + l 右移动 Ctrl +ｊ向下　Ctrl+ k向上 Ctrl + h向左 
map <C-l> <C-w>l
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-j> <C-w>j

"z加方向键调整分屏大小
map z<up> :res +5<CR>
map z<down> :res -5<CR>
map z<left> :vertical resize-5<CR>
map z<right> :vertical resize+5<CR>


" 插件
call plug#begin('~/.vim/plugged')

" fzf模糊查询
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'

" 底部美好插件
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

"File navigation文件导航 tt导航
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist 
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking 错误检查
Plug 'w0rp/ale'

" Auto Complete 代码补全插件
Plug 'Valloric/YouCompleteMe'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
" 多行输入
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" Undo Tree 撤销
Plug 'mbbill/undotree/'

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

" 插件结束
call plug#end()

"vim的主题"
color snazzy

" ===
" === NERDTree
" ===
"tt调出文件目录
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"

