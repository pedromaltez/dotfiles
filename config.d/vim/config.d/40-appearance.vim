" ------------------------------------------------------------------------------
" Color scheme
" ------------------------------------------------------------------------------

syntax enable
let base16colorspace=256
colorscheme base16-ashes
set background=dark
set t_Co=256


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
" Scrolling
" ------------------------------------------------------------------------------

" How many lines to keep around the edges
set scrolloff=10
set sidescrolloff=3
set sidescroll=5
set scrolljump=3

" ------------------------------------------------------------------------------
" Folds
" ------------------------------------------------------------------------------

" Open all folds initially
set nofoldenable
set foldmethod=indent
set foldlevelstart=99


" ------------------------------------------------------------------------------
" Text display settings
" ------------------------------------------------------------------------------

set linebreak
set textwidth=80
set autoindent
set fo-=t
set nowrap
set wrapmargin=0
set whichwrap+=h,l,<,>,[,]

set colorcolumn=+1

" Turn on cursorline on window focus, turn off cursorline and cursorcolumn on
" window blur
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline nocursorcolumn


" ------------------------------------------------------------------------------

set number        " Always show line numbers
set numberwidth=4 " Width of line number area

" Don't display mode because airline does it anyway
set noshowmode

" Display the comand being typed in normal mode on the bottom right corner
set showcmd


" listchar=trail is not as flexible, use the below to highlight trailing
" whitespace. Don't do it for unite windows or readonly files
"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\s\+$/
"augroup MyAutoCmd
"  autocmd BufWinEnter * if &modifiable && &ft!="unite" | match ExtraWhitespace /\s\+$/ | endif
"  autocmd InsertEnter * if &modifiable && &ft!="unite" | match ExtraWhitespace /\s\+\%#\@<!$/ | endif
"  autocmd InsertLeave * if &modifiable && &ft!="unite" | match ExtraWhitespace /\s\+$/ | endif
"  autocmd BufWinLeave * if &modifiable && &ft!="unite" | call clearmatches() | endif
"augroup END
