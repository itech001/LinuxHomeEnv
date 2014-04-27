"设置编码
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fileencodings=utf-8,ucs-bom,chinese
 
"语言设置
set langmenu=zh_CN.UTF-8
 
"设置语法高亮
syntax enable
syntax on
 
"设置配色方案
colorscheme torte
 
"可以在buffer的任何地方使用鼠标
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key

"使用鼠标复制内容到剪贴板
"set  mouse=v
 
"高亮显示匹配的括号
set showmatch
 
"会启用 vi 兼容模式，一般是给那些专门为老 vi 写的脚本使用的。对于绝大多数人而言，不需要使用 vi 兼容模式。
set nocompatible
 
"设置缩进,用4空格代替tab
set smartindent  
set tabstop=4  
set shiftwidth=4  
set expandtab  
set softtabstop=4
if &term=="xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif
 
"打开文件类型自动检测功能
filetype on

"设置自动补全
" 为特定文件类型载入相关缩进文件
filetype plugin on    
filetype indent on   
set completeopt=longest,menu "关掉智能补全时的预览窗口

"设置默认shell
set shell=bash
 
"设置VIM记录的历史数
set history=400
 

"设置当文件被外部改变的时侯自动读入文件
if exists("&autoread")
    set autoread
endif

"设置静音模式
set noerrorbells
set novisualbell
set t_vb=

" 在状态行上显示光标所在位置的行号和列号
set ruler
"set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

"取消底部状态栏显示。1为关闭，2为开启。
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
 
"将输入的命令显示出来，便于查看当前输入的信息
set showcmd

"下划线高亮显示光标所在行
set cursorline

"搜索时忽略大小写
set ignorecase

"高亮显示搜索匹配到的字符串
set hlsearch

"在搜索模式下，随着搜索字符的逐个输入，实时进行字符串匹配，并对首个匹配到的字符串高亮显示
set incsearch

"设定文件浏览器目录为当前目录
set bsdir=buffer

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-


" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

" 自动格式化
set formatoptions=tcrqn

" 显示制表符
"set list
"set listchars=tab:>-,trail:-



"---------------------------------------
"自动补全
"---------------------------------------
"自动补全'Python'代码 
if has ("autocmd")
autocmd FileType python set complete+=k~/.vim/tools/pydiction
endif


"---------------------------------------------
"自定义
"--------------------------------------------
"设置自定义快捷键的前导键
let mapleader=","
let g:mapleader = ","
"快速保存
nmap <leader>w :w!<cr>
"快速退出
map <leader>q :q<cr>
"重新加载 .vimrc
map <leader>s :source ~/.vimrc<cr>



