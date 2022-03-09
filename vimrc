source ~/.vimrc.bundles

" Use color scheme from https://github.com/arcticicestudio/nord-vim
silent! colorscheme nord

set autowrite " automatically write file before commands that switch files
set nomodeline " https://security.stackexchange.com/questions/36001/vim-modeline-vulnerabilities
set modelines=0 " https://security.stackexchange.com/questions/36001/vim-modeline-vulnerabilities

" Status line
set laststatus=2 " always show the status line
set ruler " show line and column number of cursor position
set showcmd " show incomplete commands

" Spacing
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set list listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set nojoinspaces " use one space after punctuation

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

" automatically rebalance windows on resize
autocmd! VimResized
autocmd VimResized * :wincmd =

let mapleader = " "

" Edit a file  in the current directory
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

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
