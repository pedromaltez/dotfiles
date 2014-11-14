"===============================================================================
" General settings
"===============================================================================
" ------------------------------------------------------------------------------
" Text display settings
" ------------------------------------------------------------------------------

set linebreak
set textwidth=80
set autoindent
set fo-=t
set colorcolumn=+1
set cursorline
set nowrap
set wrapmargin=0
set whichwrap+=h,l,<,>,[,]

" ------------------------------------------------------------------------------
" Display unprintable characters
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 'Aparecium!' - Hermione Granger
" ------------------------------------------------------------------------------

set list
set listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣
" Shows line break character in line number area
" This weird stuff accomplishes that...
" http://stackoverflow.com/questions/5746914
let &showbreak="↪ "
set cpo=n

" ------------------------------------------------------------------------------
" Folds
" ------------------------------------------------------------------------------

" Open all folds initially
set nofoldenable
set foldmethod=indent
set foldlevelstart=99

" ------------------------------------------------------------------------------
" Scrolling
" ------------------------------------------------------------------------------

" How many lines to keep around the edges
set scrolloff=10
set sidescrolloff=3
set sidescroll=5

"-------------------------------------------------------------------------------
" Miscellaneous
"-------------------------------------------------------------------------------

set number        " Always show line numbers
set numberwidth=4 " Width of line number area

" Don't display mode because airline does it anyway
set noshowmode

" Display the comand being typed in normal mode on the bottom right corner
set showcmd

autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline nocursorcolumn

