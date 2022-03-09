let mapleader = " "

" Edit a file  in the current directory
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" vim-test mappings
nnoremap <silent> <Leader>t :TestFile<CR>
nnoremap <silent> <Leader>s :TestNearest<CR>
nnoremap <silent> <Leader>l :TestLast<CR>
nnoremap <silent> <Leader>a :TestSuite<CR>
nnoremap <silent> <Leader>gt :TestVisit<CR>

source ~/.vimrc.bundles
