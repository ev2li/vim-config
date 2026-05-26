map qq <Esc>:q!<CR>
map w <Esc>:w!<CR>
map wq <Esc>:wq!<CR>
map <leader>zz <Esc><C-z>

"打开tagbar
map tb  <Esc>:Tagbar <CR>
map <F3>  <Esc>:Tagbar <CR>
"打开NERDTree
map ne  <Esc>:NERDTree <CR>
map <F2>  <Esc>:NERDTree <CR>

"行/块移动
nmap <leader><leader>j mz:m+<cr>`z
nmap <leader><leader>k mz:m-2<cr>`z
vmap <leader><leader>j :m'>+<cr>`<my`>mzgv`yo`z
vmap <leader><leader>k :m'<-2<cr>`>my`<mzgv`yo`z

"编辑文件
nmap <Leader>fe <Esc>:e

"执行vim命令
nmap xx :
nmap <leader>x :

"前后buffer
map <leader>bn :bnext<cr>
map <leader>bp :bprevious<cr>
"列出所有buffer
nmap <leader>ls <Esc>:ls<CR>
"最大化buffer
nmap <leader>wo <C-W>o
" 重新加载vimrc文件
nnoremap <leader>r :source $MYVIMRC<cr> :AirlineRefresh<cr>
" 安装、更新、删除插件
nnoremap <leader>pi :PluginInstall<cr>
nnoremap <leader>pu :PluginUpdate<cr>
nnoremap <leader>pc :PluginClean<cr>
nnoremap <leader>pl :PluginList<cr>

"编辑vim的配置文件
nmap <leader>fep :e ~/.vim/config/.plug.vim<CR>
nmap <leader>fec :e ~/.vim/config/.plug.config.vim<CR>
nmap <leader>feb :e ~/.vim/config/.base.vim<CR>
nmap <leader>fek :e ~/.vim/config/.keymap.vim<CR>
nmap <leader>fed :e ~/.vimrc<CR>
"whichkey
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"Floaterm
nmap <leader>te :FloatermToggle<CR>
"kill current buffer
nmap <leader>bu :bunload<CR>
nmap <leader>bw :bw<CR>
nmap <leader>bd :bd<CR>

"窗口操作
nnoremap <Leader><TAB> <C-O><CR>
nnoremap <leader>ws :<C-u>sp<CR>
nnoremap <leader>wv :<C-u>vs<CR>
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k
nnoremap <leader>wh <C-W>h
nnoremap <leader>wl <C-W>l
nnoremap <leader>wH <C-w>H
nnoremap <leader>wJ <C-w>J
nnoremap <leader>wK <C-w>K
nnoremap <leader>wL <C-w>L
nnoremap <leader>wx <C-w>x
nnoremap <leader>wc <C-w>c
nnoremap <leader>wo <C-w>o
nnoremap <leader>wR <C-w>R
"平滑的下滑
nnoremap <leader>fd <cmd>call smoothie#do("\<C-D>") <CR>
"=对齐
vmap <leader>= :Tabularize/= <CR>
"+对齐
vmap <leader>+ :Tabularize/+ <CR>
"分屏调整尺寸
nmap <leader>va :vertical res+1<CR>
nmap <leader>vb :vertical res-1<CR>
nmap <leader>vc <C-W>+<CR>
nmap <leader>vd <C-W>+<CR>
" jk表示esc
inoremap jk <esc>
nnoremap 9 $
nnoremap 0 ^
noremap  <leader>h :History<CR>


" 让 LeaderF 里用 j/k 上下选列表
let g:Lf_CommandMap = {
\ '<C-K>': ['<Up>'],
\ '<C-J>': ['<Down>'],
\ '<Up>': ['<C-K>'],
\ '<Down>': ['<C-J>']
\ }
" leaderF快捷键
nnoremap <silent> <leader>ff :Leaderf file<CR>
nnoremap <silent> <leader>fb :Leaderf buffer<CR>
nnoremap <silent> <leader>fm :Leaderf mru<CR>
nnoremap <silent> <leader>fl :Leaderf line<CR>
nnoremap <silent> <leader>fa :Leaderf rg -i<CR>
nnoremap <silent><leader>z :MaximizerToggle<CR>
snoremap yy <C-c>yy

" 快速打开状态窗口
nnoremap <Leader>gs :Gina status<CR>
" 快速提交
nnoremap <Leader>gc :Gina commit<CR>
" 查看当前文件历史
nnoremap <Leader>gl :Gina log %<CR>
" 查看当前文件差异
nnoremap <Leader>gd :Gina diff<CR>
" 快速推送
nnoremap <Leader>gp :Gina push<CR>

" 暂存当前文件
nnoremap <Leader>ga :Gina add %<CR>
" 暂存所有文件
nnoremap <Leader>gaa :Gina add .<CR>

" 将 <Leader>d 映射为关闭文件并保留窗口（最常用）
nnoremap <Leader>d :BD<CR>

" 将 <Leader>q 映射为强制删除，不用保存（慎用，但很爽）
nnoremap <Leader>q :BW<CR>

" 将 Ctrl + 方向键 映射为前后切换
nnoremap <Leader>bj :BB<CR>
nnoremap <Leader>bk :BF<CR>
" 禁用默认的快捷键
let g:windowswap_map_keys = 0
" 自定义快捷键：标记窗口（例如：\m）
nnoremap <silent> <leader>m :call WindowSwap#MarkWindowSwap()<CR>
" 自定义快捷键：执行交换（例如：\s）
nnoremap <silent> <leader>s :call WindowSwap#DoWindowSwap()<CR>


"窗口操作
nnoremap <Leader><TAB> <C-O><CR>
nnoremap <leader>ws :<C-u>sp<CR>
nnoremap <leader>wv :<C-u>vs<CR>
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k
nnoremap <leader>wh <C-W>h
nnoremap <leader>wl <C-W>l
nnoremap <leader>wH <C-w>H
nnoremap <leader>wJ <C-w>J
nnoremap <leader>wK <C-w>K
nnoremap <leader>wL <C-w>L
nnoremap <leader>wx <C-w>x
nnoremap <leader>wc <C-w>c
nnoremap <leader>wo <C-w>o
nnoremap <leader>wR <C-w>R
"平滑的下滑
nnoremap <leader>fd <cmd>call smoothie#do("\<C-D>") <CR>
"=对齐
vmap <leader>= :Tabularize/= <CR>
"+对齐
vmap <leader>+ :Tabularize/+ <CR>
"分屏调整尺寸
nmap <leader>va :vertical res+1<CR>
nmap <leader>vb :vertical res-1<CR>
nmap <leader>vc <C-W>+<CR>
nmap <leader>vd <C-W>+<CR>
" jk表示esc
inoremap jk <esc>
nnoremap 9 $
nnoremap 0 ^
noremap  <leader>h :History<CR>


" 让 LeaderF 里用 j/k 上下选列表
let g:Lf_CommandMap = {
\ '<C-K>': ['<Up>'],
\ '<C-J>': ['<Down>'],
\ '<Up>': ['<C-K>'],
\ '<Down>': ['<C-J>']
\ }
" leaderF快捷键
nnoremap <silent> <leader>ff :Leaderf file<CR>
nnoremap <silent> <leader>fb :Leaderf buffer<CR>
nnoremap <silent> <leader>fm :Leaderf mru<CR>
nnoremap <silent> <leader>fl :Leaderf line<CR>
nnoremap <silent> <leader>fa :Leaderf rg -i<CR>
nnoremap <silent><leader>z :MaximizerToggle<CR>
snoremap yy <C-c>yy

" 快速打开状态窗口
nnoremap <Leader>gs :Git status<CR>
" 快速提交
nnoremap <Leader>gc :Git commit<CR>
" 查看当前文件历史
nnoremap <Leader>gl :Git log %<CR>
" 查看当前文件差异
nnoremap <Leader>gd :Gvdiffsplit<CR>
" 快速推送
nnoremap <Leader>gp :Git push<CR>

" 暂存当前文件
nnoremap <Leader>ga :Git add %<CR>
" 暂存所有文件
nnoremap <Leader>gaa :Git add .<CR>

" 将 <Leader>d 映射为关闭文件并保留窗口（最常用）
nnoremap <Leader>d :BD<CR>

" 将 <Leader>q 映射为强制删除，不用保存（慎用，但很爽）
nnoremap <Leader>q :BW<CR>

" 将 Ctrl + 方向键 映射为前后切换
nnoremap <Leader>bj :BB<CR>
nnoremap <Leader>bk :BF<CR>
" 禁用默认的快捷键
let g:windowswap_map_keys = 0
" 自定义快捷键：标记窗口（例如：\m）
nnoremap <silent> <leader>m :call WindowSwap#MarkWindowSwap()<CR>
" 自定义快捷键：执行交换（例如：\s）
nnoremap <silent> <leader>s :call WindowSwap#DoWindowSwap()<CR>
" 一键清除当前文件的所有行尾空格
nnoremap <Leader>fw :FixWhitespace<CR>

" 一键打开终端
nnoremap <Leader>tv :vert term<CR>
nnoremap <Leader>th :term<CR>
" 查看messages
nnoremap <Leader>bm :messages<CR>
" 一键保存
nnoremap <Leader>fs :w<CR>

" 用插件的增强版替换默认的 / 和 ? 搜索命令
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
" 这个映射用于搜索时光标不自动跳转，只高亮
map g/ <Plug>(incsearch-stay)

" 配置：在搜索结束（比如移动光标）后自动取消高亮
" 这让你可以随时用 n/N 重新高亮下一个匹配项，体验更好
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" 映射快捷键 <Leader>qr 执行当前文件
nnoremap <Leader>ra :QuickRun<CR>
" 运行当前文件（输出到独立缓冲区，方便查看）
nnoremap <Leader>rs :QuickRun -outputter buffer<CR>

" 翻译光标下的词（在命令行显示结果）
nmap <silent> <Leader>tt <Plug>Translate
" 翻译选中的词（在命令行显示结果）
vmap <silent> <Leader>tt <Plug>TranslateV

" 翻译光标下的词（在新窗口显示详情）
nmap <silent> <Leader>tw <Plug>TranslateW
vmap <silent> <Leader>tw <Plug>TranslateWV

" 用翻译结果替换光标下的词
nmap <silent> <Leader>tr <Plug>TranslateR
vmap <silent> <Leader>tr <Plug>TranslateRV

" 将 <Leader>s 映射为在全部缓冲区中搜索
"nnoremap <Leader>sp :Swoop<CR>
