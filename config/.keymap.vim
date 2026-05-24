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

"前后buffer
map <leader>bn :bnext<cr>
map <leader>bp :bprevious<cr>
"列出所有buffer
nmap <leader>ls <Esc>:ls<CR>
"最大化buffer
nmap <leader>wo <C-W>o
"Ycm跳转到声明或定义
""nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <leader>jo <C-O>
" 重新加载vimrc文件
nnoremap <leader>r :source $MYVIMRC<cr>

" 安装、更新、删除插件
nnoremap <leader><leader>i :PluginInstall<cr>
nnoremap <leader><leader>u :PluginUpdate<cr>
nnoremap <leader><leader>c :PluginClean<cr>
nnoremap <leader><leader>l :PluginList<cr>

"编辑vim的配置文件
nmap <leader>fep :e ~/.vim/config/.plug.vim<CR>
nmap <leader>fec :e ~/.vim/config/.plug.config.vim<CR>
nmap <leader>feb :e ~/.vim/config/.base.vim<CR>
nmap <leader>fek :e ~/.vim/config/.keymap.vim<CR>
nmap <leader>fed :e ~/.vimrc<CR>
"whichkey
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"Floaterm
nmap <leader>flo :FloatermToggle<CR>
"kill current buffer
nmap <leader>bd :bunload<CR>

nnoremap <silent> <Leader>g :Magit<CR>

" leaderF快捷键
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

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
" 常用映射
nnoremap <silent> <leader>ff :Leaderf file<CR> 
nnoremap <silent> <leader>fb :Leaderf buffer<CR>r
nnoremap <silent> <leader>fm :Leaderf mru<CR>
