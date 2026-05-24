set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
set nolist
if has('termguicolors')
  set termguicolors        " 启用24位真彩色（Hyper支持）
  set t_Co=256             " 256色兼容
endif
" 显示相对行号
set relativenumber

" 同时显示当前行绝对号 + 其他行相对号（最实用）
set number relativenumber
" 设置tab和空格样式
set lcs=tab:\|\ ,nbsp:%,trail:.
"set lcs=trail:.
" " 设定行首tab为灰色
highlight LeaderTab guifg=#666666
" " 匹配行首tab
match LeaderTab /^\t/

"set nu "显示行号

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

" history文件中需要记录的行数
set history=100

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 与windows共享剪贴板
set clipboard+=unnamed

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 语法高亮
syntax on

" 高亮字符，让其不受100列限制
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
:match OverLength '1v.*'

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不要备份文件（根据自己需要取舍）
set nobackup

" 不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide

" 字符间插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 在状态行上显示光标所在位置的行号和列号
set ruler

set tabstop=4
set shiftwidth=4
set softtabstop=4

" Setting Spell Checker
set spelllang=en_us                      " spelling options
set dictionary+=/usr/share/dict/words

" Set Spliter
set splitright
set splitbelow

" Search and Case
set gdefault
set hlsearch
set incsearch
set ignorecase
set fileignorecase
set showcmd
set whichwrap+=<,>,h,l

" History
set history=9888

let mapleader=","   "将前缀键定义为逗号
let mapleader = "\<space>"   "利用转义符“\”将前缀键设置为空格键
set guifont=Courier\ New:h20

set nocompatible
set backspace=2
set t_Co=256
" 配色方案
"set background=dark
"colorscheme solarized
"colorscheme molokai
colorscheme inkpot
" colorscheme space_vim_theme 
"colorscheme dark_plus
"高亮当前行
" set cursorline
" hi CursorLine   cterm=NONE ctermbg=black ctermfg=red guibg=NONE guifg=NONE

" 以下内容来自韦大的配置
" 文件搜索和补全时忽略下面的扩展名
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class
"stuff to ignore when tab completing
set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
" MacOSX/Linux
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android
" 延迟绘制，提升性能
set lazyredraw
" 文件在外部被修改过，重新读入
set autoread
" 自动写回
set autowrite

" 让 Vim 背景透明，继承 Ghostty
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE

" fzf.vim 最稳定、不报错的 :Rg 配置（全文搜索）
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --no-heading --color=never ' . <q-args>,
  \   1, fzf#vim#with_preview({'down':'40%'}), <bang>0)

" ========== 修复：AutoPairs + UltiSnips + Coc 回车冲突 ==========
let g:UltiSnipsNoMap = 1
let g:UltiSnipsExpandTrigger = "<C-l>"
let g:UltiSnipsJumpForwardTrigger = "<C-l>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"

" 2. 关闭 UltiSnips 对回车的绑定
let g:UltiSnipsNoMap = 1

" 3. 关闭 auto-pairs 自带回车，避免冲突
let g:AutoPairsMapCR = 0

" 4. 最终正确回车：Coc补全优先，否则正常换行+括号
inoremap <silent><expr> <CR>
      \ coc#pum#visible() ? coc#pum#confirm()
      \: "\<CR>"

