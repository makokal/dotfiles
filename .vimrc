set nobackup
set nowritebackup
set noswapfile
"set fileencodings=utf-8
"set encoding=utf-8

"set tabs to 4 spaces.
set tabstop=4
set expandtab
set shiftwidth=4

"automatically indent
set smartindent
set cindent

"show line numbers on the left
set number

"case insensitive search
set ignorecase
set smartcase
set mouse=a
set showcmd
syntax on
set ruler
set cursorline
set showtabline=2

" ============================= Proper Vim setup ====================
" minibuffer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"ctags
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

"python autocomplete
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

