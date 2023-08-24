" MAPPINGS --------------------------------------------------------------- {{{

" Set the backslash as the leader key.
let mapleader = "\<Space>"

" Press <leader>pv to :Ex 
nnoremap <Leader>pv :Ex

" Press <leader>pp to copy from systemclipboard 
nnoremap <Leader>pp "+p

" yank onto clipboard as well
" vnoremap y ygv"+y

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

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
nnoremap <C-f> :FZF<CR>
call plug#end()

" Workaround for system clipboard 
function ToSystemClipBoard()
:call system('xclip -selection c', @r)
endfunction
vnoremap <Leader>y "ry:call ToSystemClipBoard()<cr>
nnoremap <Leader>yy "ryy:call ToSystemClipBoard()<cr>

" Function to paste from system clipboard
function FromSystemClipBoard()
	let @r = system('xclip -o -selection clipboard')
	normal! "rp
endfunction

vnoremap <Leader>p :call FromSystemClipBoard()<cr>
nnoremap <Leader>p :call FromSystemClipBoard()<cr>
