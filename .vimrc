" MAPPINGS --------------------------------------------------------------- {{{

" Set the backslash as the leader key.
let mapleader = "\<Space>"

" Press <leader>pv to :Ex 
nnoremap <Leader>pv :Ex<cr>

" Working with tabs 
nnoremap <Leader>tn gt
nnoremap <Leader>tl gT
nnoremap <Leader>tt :tabnew<cr>
" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Add numbers to each line on the left-hand side.
set relativenumber

" Set the colorscheme
colorscheme desert
" }}}

" Install vim-plug plugin manager
silent! call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"nnoremap <C-f> :FZF<CR>
nnoremap <Leader>pf :FZF<CR>
call plug#end()

" Workaround for system clipboard 
function ToSystemClipBoard()
:call system('xclip -selection c', @r)
endfunction
vnoremap <Leader>y "ry:call ToSystemClipBoard()<cr>
nnoremap <Leader>yy "ryy:call ToSystemClipBoard()<cr>
nnoremap <Leader>ye "rY:call ToSystemClipBoard()<cr>
nnoremap <Leader>yw "ryw:call ToSystemClipBoard()<cr>

" Function to paste from system clipboard
function FromSystemClipBoard()
	let @r = system('xclip -o -selection clipboard')
	normal! "rp
endfunction

vnoremap <Leader>p :call FromSystemClipBoard()<cr>
nnoremap <Leader>p :call FromSystemClipBoard()<cr>

" normal to visual select round and curly bracket
nnoremap <Leader>mr vab
nnoremap <Leader>mc vaB
nnoremap <Leader>mt vat

