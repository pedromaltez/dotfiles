" ------------------------------------------------------------------------------
"  Backup settings - don't have them
" ------------------------------------------------------------------------------

set nobackup
set nowritebackup
set noswapfile

" ------------------------------------------------------------------------------
" Splits
" ------------------------------------------------------------------------------

" Always splits to the right and below
set splitright
set splitbelow

" ------------------------------------------------------------------------------
" Search
" ------------------------------------------------------------------------------

set ignorecase " Ignores case
set smartcase  " Unless uppercase is used
set hlsearch   " Highlight search strings
set incsearch  " Search as you type


" ------------------------------------------------------------------------------

" Vim history length - number of commands to save from session to session
set history=10000

" Allow changing buffer without saving it first
set hidden

" Something about backspace not working properly sometimes; this fixes it
set backspace=indent,eol,start

" Reload file when changed from the outside
set autoread

" Add a virtual space to the end of lines in normal mode, allows pressing `i`
" instead of `A`
set virtualedit=onemore

