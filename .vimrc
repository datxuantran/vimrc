" MAPPINGS --------------------------------------------------------------- {{{

" Set the backslash as the leader key.
let mapleader = "\<Space>"

" Press <leader>pv to :Ex 
nnoremap <Leader>pv :Ex<cr>

" Working with tabs 
nnoremap tn gt
nnoremap tl gT
nnoremap tt :tabnew<cr>
" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Add numbers to each line on the left-hand side.
set relativenumber

" Set the colorscheme
" colorscheme desert
" }}}

" PLUGINS ------------------------------------------------------------ {{{
" Install vim-plug plugin manager
silent! call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
nnoremap <Leader>pf :FZF<CR>

call plug#end()
" }}}

" SYSTEM CLIPBOARD------------------------------------------------------------ {{{

" Copy to system clipboard 
function ToSystemClipBoard()
:call system('xclip -selection c', @r)
endfunction

vnoremap <Leader>y "ry:call ToSystemClipBoard()<cr>
nnoremap <Leader>yy "ryy:call ToSystemClipBoard()<cr>
nnoremap <Leader>ye "rY:call ToSystemClipBoard()<cr>
nnoremap <Leader>yw "ryw:call ToSystemClipBoard()<cr>

" Copy from System clipboard 
function FromSystemClipBoard()
	let @r = system('xclip -o -selection clipboard')
	normal! "rp
endfunction

vnoremap <Leader>p :call FromSystemClipBoard()<cr>
nnoremap <Leader>p :call FromSystemClipBoard()<cr>

" }}}

" Curly/Round Brakets Selection 
nnoremap mar vab 
nnoremap mac vaB
nnoremap mat vat

nnoremap mir vib 
nnoremap mic viB
nnoremap mit vit


" WINDOWS------------------------------------------------------------ {{{

" Split window horizontally
nnoremap <leader>w- :split<CR>

" Split window vertically
nnoremap <leader>w\ :vsplit<CR>

" Switch between windows
nnoremap <leader>ww <C-w>w

" Quit the current window
nnoremap <leader>wq :q<CR>

" Exchange the current window with the next one
nnoremap <leader>wx <C-w>x

" Make all windows equal height and width
nnoremap <leader>w= <C-w>=

" Move cursor to the left window (vertical split)
nnoremap <leader>wh <C-w>h

" Move cursor to the right window (vertical split)
nnoremap <leader>wl <C-w>l

" Move cursor to the window below (horizontal split)
nnoremap <leader>wj <C-w>j

" Move cursor to the window above (horizontal split)
nnoremap <leader>wk <C-w>k

" Make current window full height at far left (leftmost vertical window)
nnoremap <leader>wH :topleft vertical resize +100<CR>

" Make current window full height at far right (rightmost vertical window)
nnoremap <leader>wL :botright vertical resize +100<CR>

" Make current window full width at the very bottom (bottommost horizontal window)
nnoremap <leader>wJ :botright resize +100<CR>

" Make current window full width at the very top (topmost horizontal window)
nnoremap <leader>wK :topleft resize +100<CR>
" }}}
