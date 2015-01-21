function! s:goyo_enter()
  NumbersToggle
endfunction

autocmd! User GoyoEnter
autocmd  User GoyoEnter nested call <SID>goyo_enter()
