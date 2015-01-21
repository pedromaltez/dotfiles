" Leader mappings, space for leader, blackslash for local leader
let mapleader = " "
let maplocalleader = "\\"

set pastetoggle=<F2>
nnoremap <F3> :NumbersToggle<CR>

" Use ; to type : in normal mode, no need to press and hold shift
nnoremap ; :

" Swap the use of ` and ' which refer to the different system clipboards
nnoremap ` '
nnoremap ' `

" Open VimFiler's file explorer
nnoremap <silent> <leader><tab> :VimFilerExplorer<CR>

nnoremap <leader>rm :call DeleteCurrentFile()<CR>

" Cycle between buffers
nnoremap <C-p> :bprevious<CR>
nnoremap <C-n> :bnext<CR>

" Window navigation
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

nnoremap <silent> <leader>mm :only<CR>

" Edit/reload vimrc
nnoremap <silent> <leader>ev  :edit!  $VIMRC<CR>
nnoremap <silent> <leader>rv :source $VIMRC<CR>

" Save
nnoremap <leader>w  :w!<CR>
" Delete buffer
nnoremap <leader>bd :bd<CR>

nnoremap <leader>Q :q<CR>

nnoremap <leader>= :vertical new<CR>
nnoremap <leader>- :new<CR>

nnoremap <leader>lm :Limelight!!<CR>
nnoremap <leader>G :Goyo<CR>

" Go to beginning of line
noremap H ^
" Go to end of line
noremap L $
