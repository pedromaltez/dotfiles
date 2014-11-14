" Use the fuzzy matcher for everything
call unite#filters#matcher_default#use(["matcher_fuzzy"])

" Use the rank sorter for everything
call unite#filters#sorter_default#use(["sorter_rank"])

" Ignores
call unite#custom_source("file_rec,file_rec/async,file_mru,file,buffer,grep",
      \ "ignore_pattern", join([
      \ "tmp/",
      \ "\.git",
      \ "\.so",
      \ "\.swp",
      \ "\.zip",
      \ "\.gif",
      \ "\.jpg",
      \ "\.jpeg",
      \ "\.png/",
      \ "\.log/",
      \ "\.egg",
      \ ".sass-cache",
      \ ], "\|"))

" Start in insert mode
let g:unite_enable_start_insert = 1

" Open in bottom right
let g:unite_split_rule = "botright"

" Enable yank history
let g:unite_source_history_yank_enable = 1

" Enable short source name in window
let g:unite_enable_short_source_names = 0

" Shorten the default update date of 500ms
let g:unite_update_time = 100

" Do not overwrite status line
let g:unite_force_overwrite_statusline = 0

" Extra configuration with settings function
autocmd FileType unite call s:unite_settings()


" Unite Mappings
" --------------

" Map space to the prefix for Unite
nnoremap [unite] <Nop>
nmap , [unite]

nnoremap [unite], :Unite -no-split -auto-preview -start-insert file_rec/async:!<CR>

" General fuzzy search
nnoremap <silent> [unite]<space> :<C-u>Unite
      \ -buffer-name=files -start-insert buffer file_rec/async:!<CR>

" Yank history
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<CR>


" Unite Settings Function
" -----------------------

function! s:unite_settings()
  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-k> <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-x> unite#do_action("split")
  imap <silent><buffer><expr> <C-v> unite#do_action("vsplit")
  imap <silent><buffer><expr> <C-t> unite#do_action("tabopen")
  nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction

