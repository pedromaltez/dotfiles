if has("vim_starting")
  set runtimepath+=$XDG_CACHE_HOME/vim/bundle/neobundle.vim
endif

call neobundle#begin( "$XDG_CACHE_HOME/vim/bundle" )

NeoBundleFetch "Shougo/neobundle.vim"

" ------------------------------------------------------------------------------

NeoBundle "Shougo/vimproc.vim", {
  \ "build" : {
  \   "mac" : "make -f make_mac.mak",
  \   "linux" : "make",
  \   "unix" : "gmake"
  \ }
\ }

" Style configuration
NeoBundle "vim-scripts/PreserveNoEOL"
NeoBundle "editorconfig/editorconfig-vim"

" Appearance
NeoBundle "chriskempson/base16-vim"
NeoBundle "paranoida/vim-airlineish"

" IDE
NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/vimfiler.vim"
" NeoBundle "Yggdroot/indentLine"
NeoBundle "myusuf3/numbers.vim"
NeoBundle "sjl/gundo.vim"
NeoBundle "bling/vim-airline"
NeoBundle "junegunn/limelight.vim"
NeoBundle "junegunn/goyo.vim"
NeoBundle "triglav/vim-visual-increment"
NeoBundle "scrooloose/nerdcommenter"

" VCS
NeoBundle "tpope/vim-fugitive"
NeoBundle "airblade/vim-gitgutter"

" Code completion
"NeoBundle "ervandew/supertab"
NeoBundle "SirVer/ultisnips"
NeoBundle "honza/vim-snippets"
" When compiling YouCompleteMe ensure that it finds a version of python 2.7.x,
" otherwise it won't compile. Preferably make sure it's the same version that
" Vim is using. You can switch back to a different global python after compiling
" if using pyenv
NeoBundle "Valloric/YouCompleteMe"

" Ruby
NeoBundle "vim-ruby/vim-ruby"
NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-bundler"

" JavaScript
NeoBundle "kchmck/vim-coffee-script"
NeoBundle "leafgarland/typescript-vim"
NeoBundle "gkz/vim-ls" " LiveScript

" Syntax
NeoBundle "scrooloose/syntastic"
NeoBundle "saltstack/salt-vim"
NeoBundle "othree/html5.vim"
NeoBundle "tpope/vim-markdown"
NeoBundle "slim-template/vim-slim"
NeoBundle "digitaltoad/vim-jade"

" Pretty colors?
NeoBundle "chrisbra/Colorizer"

" ------------------------------------------------------------------------------
" Trying something?
" ------------------------------------------------------------------------------

NeoBundle "justinmk/vim-gtfo"
NeoBundle "kana/vim-textobj-user"
NeoBundle "reedes/vim-textobj-quote"
NeoBundle "tpope/vim-surround"
NeoBundle "haya14busa/incsearch.vim"

" ------------------------------------------------------------------------------

call neobundle#end()

" Required by NeoBundle
filetype plugin indent on

NeoBundleCheck
