"execute pathogen#infect() 

" 引用自定义的vundle配置文件
source ~/.vundle_vimrc 

"let $LANG="zh_CN.UTF-8"
let $LANG="zh_CN.GBK"

set encoding=gbk
set fileencoding=gb2312
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set termencoding=gbk

"set fileencodings=gbk  
set ambiwidth=double

set smartindent  
set backspace=indent,eol,start
set nowrap
set nu
set smarttab  
set expandtab  
"set tabstop=4  
"set softtabstop=4  
"set shiftwidth=4  
"set backspace=2
"set textwidth=79

"set fdm=marker
set term=dtterm
syntax on

filetype plugin indent on  
autocmd FileType python set omnifunc=pythoncomplete#Complete  

set completeopt=longest,menu

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
nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-/>f :cs find f <C-R>=expand("<cword>")<CR><CR>
nmap <C-/>i :cs find i ^<C-R>=expand("<cword>")<CR>$<CR>
nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"---------------------------------------------
"一些VIM帮助
":helptags ~/.vim/doc 重新编译帮助文件
"---------------------------------------------
" 		Taglist
"
let Tlist_Show_One_File=0                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
"let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
"let Tlist_File_Fold_Auto_Close=1             " 自动折叠
"-------------------------------------------------
"                  vim lua file ftpplugin
"let g:lua_check_globals = 1
let g:lua_complete_omni = 1
"-------------------------------------------------

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

let g:EasyGrepCommand = 1
"let g:EasyGrepFileAssociations = "C:\\Program Files\\Vim\\vim72\\plugin\\EasyGrepFileAssociations"
let g:EasyGrepRecursive = 1
let g:EasyGrepHidden = 0
let g:EasyGrepExtraWarnings=0
let g:EasyGrepIgnoreCase= 1

nnoremap <silent> <F3> :Rgrep<CR>
 
"excel.vim
let g:zipPlugin_ext = '*.zip,*.jar,*.xpi,*.ja,*.war,*.ear,*.celzip,*.oxt,*.kmz,*.wsz,*.xap,*.docx,*.docm,*.dotx,*.dotm,*.potx,*.potm,*.ppsx,*.ppsm,*.pptx,*.pptm,*.ppam,*.sldx,*.thmx,*.crtx,*.vdw,*.glox,*.gcsx,*.gqsx'

set laststatus=2
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
"set encoding=utf8
let g:Powerline_symbols = 'fancy'
