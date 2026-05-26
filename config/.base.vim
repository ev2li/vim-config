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

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

" 在处理未保存或只读文件的时候，弹出确认

set confirm

" 与windows共享剪贴板
set clipboard+=unnamed
" 剪贴板操作单独映射
set selection=exclusive
set selectmode=mouse,key
set mousehide
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

let mapleader = "\<space>"   "利用转义符“\”将前缀键设置为空格键
set guifont=FiraCode\ Nerd\ Font:h20

set nocompatible
set backspace=2
set t_Co=256
" 配色方案
set background=dark         " dark（暗色）/ light（亮色）
colorscheme gruvbox
" colorscheme solarized
" colorscheme molokai
" colorscheme inkpot
" colorscheme dark_plus
"高亮当前行
set cursorline
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

inoremap <silent><expr> <CR>
      \ coc#pum#visible() ? coc#pum#confirm()
      \: "\<CR>"
" 用 <Leader>s 代替 S
let g:magit_stage_file_mapping   = '<Leader>s'
let g:magit_commit_mapping = '<Leader>cc'
nnoremap <silent> <Leader>p :!git push<CR>
autocmd FileType magit nmap <localleader>sa :<C-u>%S<CR>
" 关掉 commit 二次确认，写完 message 用 :w 或 ZZ 直接提交
let g:magit_commit_no_confirm = 1

" 全局开关（默认 1）
let g:webdevicons_enable = 1

" 常用插件开启/关闭
let g:webdevicons_enable_nerdtree = 1      " NERDTree 图标
let g:webdevicons_enable_airline = 1       " airline 状态栏图标
" NERDTree 美化：隐藏括号
let g:webdevicons_conceal_nerdtree_brackets = 1
" NERDTree 默认显示隐藏文件
let g:NERDTreeShowHidden = 1
set mouse=a

" 在 .vimrc 中，NERDTree 内按 D 直接删除（跳过菜单）
autocmd FileType nerdtree nnoremap <buffer> D :call NERDTreeDeleteNode()<CR>

" 显示编号，方便切换
let g:buftabline_numbers = 2    " 2 = 显示 buffer 序号
let g:buftabline_indicators = 1 " 显示修改标记 (+)
" 启用 buffer 标签栏
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_close_button = 1
" 切换 buffer
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>

" ... 或通用映射
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
" 针对特定文件类型（如 Python、JavaScript）保存时自动清理
autocmd BufWritePre *.py,*.js,*.vim,*.go,*.cpp,*.lua :FixWhitespace
" 让插件在 Markdown 和 txt 文件中不要高亮错误
let g:extra_whitespace_ignored_filetypes = ['markdown', 'txt','diff','terminal']

" 在 ~/.vimrc 中添加：

" 1. 启用自动保存功能 (1 为开启)
let g:auto_save = 1

" 2. (可选) 设置静默模式，不显示 "Saved" 之类的提示
" let g:auto_save_silent = 1

" 3. (可选) 设置触发自动保存的事件
" 默认是：离开插入模式时 (InsertLeave) 和文本被修改时 (TextChanged)
" 这里设置为当 Vim 窗口失去焦点时保存，类似于 VS Code 的 onFocusChange
let g:auto_save_events = ["FocusLost"]
