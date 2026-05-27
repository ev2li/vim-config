
" tch to last buffer"	 ale-setting {{{
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\   'go': ['golint'],
\   'php': ['phplint'],
\}
" }}}
"-----------------------------------------------NERDTree插件配置开始----------------------------------------------------------
" NerdTree才插件的配置信息
""将F2设置为开关NERDTree的快捷键
map <f2> :NERDTreeToggle<cr>
nmap <leader>tn :NERDTreeToggle<cr>
""修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
""窗口位置
let g:NERDTreeWinPos='left'
""窗口尺寸
let g:NERDTreeSize=30
""窗口是否显示行号
let g:NERDTreeShowLineNumbers=1
""不显示隐藏文件
let g:NERDTreeHidden=0
""------------------------------------------------nerdtree插件配置结束---------------------------------------------------------

set laststatus=2
"let g:lightline = {
"      \ 'colorscheme': 'one',
"      \ }
""""""""""""""""""""""""""""""
" miniBufexplorer Config
""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchWindows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"解决FileExplorer窗口变小问题
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplorerMoreThanOne=2

" LeaderF
" 文件查找快捷键 crtl p
let g:Lf_ShortcutF = '<C-P>'
" 设置弹出窗口位置浮空
let g:Lf_WindowPosition = 'popup'
" 设置忽略文件
let g:Lf_WildIgnore = {
       \ 'dir': ['.svn','.git','.hg'],
       \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.d','*.o','*.so','*.py[co]']
       \}

let g:Lf_HideHelp = 1
let g:Lf_ShowDevIcons = 0
" 关闭插件默认映射
let g:multi_cursor_use_default_mapping = 0
" mapping
let g:multi_cursor_start_word_key      = '<C-d>'	" 选中一个
let g:multi_cursor_select_all_word_key = '<A-n>'	" 全选匹配的字符
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-p>'	" 回到上一个
let g:multi_cursor_skip_key            = '<C-x>'	" 跳过当前选中, 选中下一个
let g:multi_cursor_quit_key            = '<Esc>'	" 退出

" =============== vim-devicons 配置 ===============
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1


" =============== Tagbar 配置 ===============
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=30
nnoremap <leader>fd <cmd>call smoothie#do("\<C-D>") <CR>

let g:indentLine_enabled = 1 " 使插件生效
let g:indentLine_char = '┊' " 设置缩进线字符，也可以为 '|', '┆', '┊' 等
let g:indentLine_conceallevel = 2 " 使插件正常运行

"vim-commentary
"为python和shell等添加注释
autocmd FileType python,shell,coffee set commentstring=#\ %s
"修改注释风格
autocmd FileType java,c,cpp set commentstring=//\ %s

set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts = 1

" 启用
let g:codeium_enabled = v:true
" 自定义 Tab 接受
" inoremap <silent><expr> <Tab>
" \ codeium#Accept() ? "\<Tab>" : "\<Tab>"
" inoremap <silent><expr> <Tab>
\ codeium#Accept() ? codeium#Accept() : "\<Tab>"
inoremap <silent><expr> <Tab>
\ codeium#Accept() == "" ? "\<Tab>" : codeium#Accept()
" 状态栏显示状态（可选）
set statusline+=%{codeium#GetStatusString()}

" 补全菜单样式
set completeopt=menu,menuone,noselect

" 回车确认选中的补全（最重要）
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" 按 Ctrl+Space 手动触发补全
inoremap <silent> <C-Space> <C-o>:call coc#refresh()<CR>

" coc 回车选中补全（标准官方版）
inoremap <silent><expr> <CR>
      \ coc#pum#visible() ? coc#pum#confirm()
      \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" 跳转定义
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" 悬浮提示（看文档）
nnoremap <silent> K :call CocAction('doHover')<CR>

" vim-yazi 配置
let g:yazi_replace_netrw = 1  " 替代 netrw
let g:yazi_floating_window = 1 " 浮动窗口（Neovim）
nnoremap <leader>y :Yazi<CR>
" 强制 Yazi 退出只关闭自身，保留 Vim
autocmd FileType yazi nnoremap <buffer> q :close<CR>
autocmd FileType yazi inoremap <buffer> q <ESC>:close<CR>
let g:session_autoload = 'prompt'  " 启动时询问加载

" -------- ranger.vim 配置 --------
" 禁用默认映射，自己设
let g:ranger_map_keys = 0

" 打开当前目录 ranger
nnoremap <leader>fr :Ranger<CR>
" 在新标签打开 ranger
nnoremap <leader>ft :RangerNewTab<CR>

" 可选：替换默认 netrw
let g:ranger_replace_netrw = 1
let g:ranger_quit_after_open = 1
