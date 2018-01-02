"execute pathogen#infect() 

"-------------------------------------------------
" 引用自定义的vundle配置文件
source ~/.vundle_vimrc 
" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
"-------------------------------------------------
"                 编码
"let $LANG="zh_CN.UTF-8"
"let $LANG="zh_CN.GBK"

"set encoding=gbk
"set fileencoding=gb2312
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
"set termencoding=gbk

"set fileencodings=gbk  

"退出vim后屏幕显示编辑内容
set  t_ti= t_te=

"-------------------------------------------------
"                 快捷键
let mapleader=";"
"-------------------------------------------------
"                 样式
"set ambiwidth=double
set nowrap
set nu
set smarttab  
set softtabstop=4  
set shiftwidth=4  
set backspace=2
set noexpandtab
set smartindent  
set backspace=indent,eol,start

"不折叠
set nofoldenable
"set fdm=marker
"set term=dtterm
syntax on

filetype plugin indent on  
autocmd FileType * set tabstop=4  noexpandtab
autocmd FileType python set omnifunc=pythoncomplete#Complete  listchars=tab:>-,trail:-  
set listchars=tab:>-,trail:-

set completeopt=longest,menu
"-------------------------------------------------
"			      光标
" 显示光标当前位置
set ruler

" 禁止光标闪烁
set gcr=a:block-blink
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
"

"-------------------------------------------------
"                 gundo(回撤功能)
nnoremap <Leader>ud :GundoToggle<CR>

"开启保存 undo 历史功能
set undofile
"undo 历史保存路径
set undodir=~/.undo_history/
"-------------------------------------------------
"				  信息游览
"启用:Man命令查看各类man信息
source $VIMRUNTIME/ftplugin/man.vim
"定义:Man命令查看各类man信息的快捷键
nmap <Leader>man :Man 3 <cword><CR>
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
"                 minibufexpl
let g:miniBufExplorerAutoStart = 0
"显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
"buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>
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
let NERDTreeIgnore=['\.pyc','\~$','\.swp', '\.o']
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

let g:Tagbar_title = "[Tagbar]"
let g:tagbar_width = 20
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
nmap <Leader>s :CtrlSF <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>st :CtrlSFToggle<CR>
nmap <Leader>sw :CtrlSF -W <C-R>=expand("<cword>")<CR><CR>
"-------------------------------------------------
"			vim-fswitch
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>f :FSHere<cr>
"-------------------------------------------------
"               powerline
set laststatus=2
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
let g:Powerline_symbols = 'fancy'
"=================================================
"				C++
"------------------
" 语法高亮 vim-cpp-enhanced-highlight
let g:cpp_no_function_highlight = 1
let g:cpp_concepts_highlight = 1

"补全功能 clang_complete
let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
	let g:clang_library_path=s:clang_library_path
else
	let s:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
	if isdirectory(s:clang_library_path)
		let g:clang_library_path=s:clang_library_path
	endif
endif
"=================================================
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
"
"显示tab
"
