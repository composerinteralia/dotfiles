let mapleader = " "

" Edit a file  in the current directory
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

source ~/.vimrc.bundles
