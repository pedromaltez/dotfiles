" Delete current file, keeping the buffer open in case of accidental deletion
function! DeleteCurrentFile()
  call delete(expand("%"))
  echo "Deleted current file: " expand("%")
endfunction
