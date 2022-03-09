source ~/.vimrc.bundles

" Use color scheme from https://github.com/arcticicestudio/nord-vim
colorscheme nord

" automatically rebalance windows on resize
autocmd! VimResized
autocmd VimResized * :wincmd =

let mapleader = " "

" Edit a file  in the current directory
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" vim-test mappings
nnoremap <silent> <Leader>t :TestFile<CR>
nnoremap <silent> <Leader>s :TestNearest<CR>
nnoremap <silent> <Leader>l :TestLast<CR>
nnoremap <silent> <Leader>a :TestSuite<CR>
nnoremap <silent> <Leader>gt :TestVisit<CR>

" Map Ctrl + p to open fuzzy find (FZF)
nnoremap <c-p> :Files<cr>

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in fzf for listing files.
  let $FZF_DEFAULT_COMMAND = 'ag --literal --files-with-matches --nocolor --hidden -g ""'

  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \ :Ag<SPACE>
endif

" Make splitjoin behave reasonably
let g:splitjoin_ruby_curly_braces = 0
let g:splitjoin_ruby_hanging_args = 0
let g:splitjoin_ruby_trailing_comma = 0
let g:splitjoin_ruby_options_as_arguments = 1

