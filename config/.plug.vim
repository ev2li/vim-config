" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
Plugin 'luochen1990/rainbow'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-surround'
Plugin 'Yggdroot/LeaderF'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'junegunn/vim-slash'
" Plugin 'https://github.com/honza/vim-snippets'
"Plugin 'SirVer/ultisnips'
Plugin 'regedarek/ZoomWin'
Plugin 'liuchengxu/vim-which-key'
Plugin 'voldikss/vim-floaterm'
Plugin 'psliwka/vim-smoothie'
Plugin 'plasticboy/vim-markdown'
Plugin 'ilyachur/cmake4vim'
Plugin 'godlygeek/tabular'
Plugin 'vim-scripts/a.vim'
Plugin 'Yggdroot/indentLine'
" Plugin 'tpope/vim-eunuch', {'on': ['Mkdir', 'Rename', 'Unlink', 'Delete', 'Move', 'Chmod', 'Cfind', 'Clocate', 'Lfine', 'Llocate', 'SudoEdit', 'SudoWrite', 'Wall', 'W']}
" 状态栏（替代 powerline，零报错）
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Exafunction/codeium.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'mhinz/vim-startify'
Plugin 'junegunn/fzf', { 'do': {-> fzf#install()} }
Plugin 'junegunn/fzf.vim'
Plugin 'easymotion/vim-easymotion'
" Plugin 'jreybert/vimagit'
Plugin 'yukimura1227/vim-yazi'
Plugin 'szw/vim-maximizer'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ap/vim-buftabline'
Plugin 'tpope/vim-repeat'
Plugin 'wellle/targets.vim'
Plugin 'romainl/vim-cool'
Plugin 'tpope/vim-unimpaired'
Plugin 'lambdalisue/vim-gina'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'qpkorr/vim-bufkill'
Plugin 'wesQ3/vim-windowswap'
Plugin 'tpope/vim-eunuch'
Plugin 'bronson/vim-trailing-whitespace'
" 你的所有插件需要在下面这行之前
call vundle#end()

