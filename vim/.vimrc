"execute pathogen#infect() 

"-------------------------------------------------
" 引用自定义的vundle配置文件
source ~/.vundle_vimrc 
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
"-------------------------------------------------
"                 编码
"let $LANG="zh_CN.UTF-8"
"let $LANG="zh_CN.GBK"

"set encoding=gbk
"set fileencoding=gb2312
"set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
"set termencoding=gbk

"set fileencodings=gbk  

"-------------------------------------------------
"                 快捷键
let mapleader=";"
"-------------------------------------------------
"                 样式
"set ambiwidth=double
set smartindent  
set backspace=indent,eol,start
set nowrap
set nu
set smarttab  
set expandtab  
set tabstop=4  
set softtabstop=4  
set shiftwidth=4  
set backspace=2
set textwidth=79

"set fdm=marker
"set term=dtterm
syntax on

filetype plugin indent on  
autocmd FileType python set omnifunc=pythoncomplete#Complete  

set completeopt=longest,menu

"-------------------------------------------------
"                 主题
"set t_Co=256
"hi linenr ctermfg=grey
"hi LineNr guibg=darkgrey ctermbg=darkgrey guifg=white ctermfg=grey

"设置主题
colorscheme peachpuff
"注释颜色
"hi Comment ctermfg=DarkGrey ctermbg=black guifg=DarkGrey gui=bold
hi Comment    term=reverse  ctermfg=darkgreen 
"darkcyan

"-------------------------------------------------
"                 cscope
if filereadable("cscope.out") 
	cs add cscope.out 
endif 
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cword>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"---------------------------------------------
" 		Taglist
let Tlist_Show_One_File=0                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
"let Tlist_File_Fold_Auto_Close=1             " 自动折叠
"-------------------------------------------------
"                  vim lua file ftpplugin
"let g:lua_check_globals = 1
let g:lua_complete_omni = 1
"-------------------------------------------------
"                 NERD_tree
" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
" autocmd VimEnter * NERDTree
"
" " 按下 F2 调出/隐藏 NERDTree
:map <F9>:silent! NERDTreeToggle
let NERDTreeDirArrows = 0
"
" " 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
let NERDTreeWinPos="right"
"
" " 当打开 NERDTree 窗口时，自动显示 Bookmarks
" let NERDTreeShowBookmarks=1
"
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
"-------------------------------------------------
"               界面管理
let g:winManagerWidth = 25
"let g:winManagerWindowLayout="NERDTree|TagList"  
let g:winManagerWindowLayout="NERDTree|Tagbar"  
  
let g:NERDTree_title="[NERDTree]"  
function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  

function! NERDTree_IsValid()  
    return 1  
endfunction  

let g:tagbar_vertical = 40
let g:Tagbar_title = "[Tagbar]"
function! Tagbar_Start()
    exec 'TagbarOpen'
endfunction

function! Tagbar_IsValid()
    return 1
endfunction
"-------------------------------------------------
"           CtrlP
"let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
" 设置过滤不进行查找的后缀名 
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(pyc|so|dll|swp)$',
  \}
"-------------------------------------------------
"           CtrlSF
"nnoremap <Leader>sf :CtrlSF<CR>
nmap <Leader>sf :CtrlSF <C-R>=expand("<cword>")<CR><CR>
"-------------------------------------------------
"               powerline
set laststatus=2
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
let g:Powerline_symbols = 'fancy'
"-------------------------------------------------
"一些VIM帮助
":helptags ~/.vim/doc 重新编译帮助文件
"-------------------------------------------------
" 汇集的常见操作
"
" 窗口  
" :WMToggle, :NERDTree :TlistToggle
" 查找
" :CtrlP(文件), 
" :CtrlSF/:CtrlSFOpen(字符串), 
" :Ag, 
" C-], ctag 
" :cs find, C文件
