" Status
set laststatus=2 " always show the status line
set ruler " show line and column number of cursor position
set showcmd " show incomplete commands

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

" automatically rebalance windows on resize
autocmd! VimResized
autocmd VimResized * :wincmd =
