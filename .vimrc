" 显示行号
set nu

set hlsearch
set cursorline
" 设置文件编码，显示编码，使其能够正常显示中文"
"处理文本中显示乱码
      set encoding=utf-8
      set fileencodings=utf-8,chinese,latin-1
      if has("win32")
      set fileencoding=chinese
      else
      set fileencoding=utf-8
      endif
    
      "处理菜单及右键菜单乱码
      source $VIMRUNTIME/delmenu.vim
      source $VIMRUNTIME/menu.vim
    
      "处理consle输出乱码
      language messages zh_CN.utf-8

" 不进行自动备份，就是不生成带~的文件"
set nobackup
" 使用的配色方案"
colorscheme desert

"自己定义的快捷键"
" 下翻页"
map <SPACE> <PAGEDOWN>

""""""""""""""""""""""""""""""
" winManager setting
"""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <F4> :WMToggle<cr>

" Tlist的侧栏在右边显示
let Tlist_Use_Right_Window=1
map <F2> :TlistToggle<CR>


" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50  	" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq

" Switch syntax highlighting on, when the terminal has colors
syntax on

" 自动缩进"
set autoindent		" always set autoindenting on
set cindent
set tabstop=4
"在粘贴的时候不会每一行都缩
"set paste
"for mediawiki
au BufRead,BufNewFile *.wiki setfiletype Wikipedia
nmap <C-U>1 :<ESC>0d$i====<ESC>2hp<ESC><CR>
nmap <C-U>2 :<ESC>0d$i======<ESC>3hp<ESC><CR>
nmap <C-U>3 :<ESC>0d$i========<ESC>4hp<ESC><CR>
nmap <C-A> :<ESC>a<a href=""></a><ESC>4h<CR>
nmap <C-w> :setfiletype tiddlywiki<CR>

"将k,j等键修改为可以自动移到屏幕显示的下一行,而不是真正的下一行
setlocal encoding=utf-8
setlocal textwidth=0
setlocal linebreak
setlocal matchpairs+=<:>
nnoremap <buffer> k gk
nnoremap <buffer> j gj
nnoremap <buffer> <Up> gk
nnoremap <buffer> <Down> gj
nnoremap <buffer> 0 g0
nnoremap <buffer> ^ g^
nnoremap <buffer> $ g$
inoremap <buffer> <Up> <C-O>gk
inoremap <buffer> <Down> <C-O>gj
vnoremap <buffer> k gk
vnoremap <buffer> j gj
vnoremap <buffer> <Up> gk
vnoremap <buffer> <Down> gj
vnoremap <buffer> 0 g0
vnoremap <buffer> ^ g^
vnoremap <buffer> $ g$
"set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
  function! CurDir()
     let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
     return curdir
  endfunction
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
set statusline=%F%m%r,CWD:\ %r%{CurDir()}%h\ \ \%Y,%{&fileformat},[encoding=%{&fileencoding}]\ \ \ \%l,%c%V\ %p%%\ \ \ [\ %L\ lines\ in\ all\ ]
                            " 设置在状态行显示的信息如下：
                            " %F    当前文件名
                            " %m    当前文件修改状态
                            " %r    当前文件是否只读
                            " %Y    当前文件类型
                            " %{&fileformat}
                            "       当前文件编码
                            " %b    当前光标处字符的 ASCII 码值
                            " %B    当前光标处字符的十六进制值
                            " %l    当前光标行号
                            " %c    当前光标列号
                            " %V    当前光标虚拟列号 (根据字符所占字节数计算)
                            " %p    当前行占总行数的百分比
                            " %%    百分号
                            " %L    当前文件总行数
set textwidth=0
set ic
