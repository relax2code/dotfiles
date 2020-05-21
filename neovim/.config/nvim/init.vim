scriptencoding utf-8
syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" all plugins
source ~/.config/nvim/plugins.vim
"
colorscheme gruvbox
set background=dark

" Netrw
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let mapleader=" "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

"must install ripgrep and fzf and set .zshrc
"export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs --hidden'
"export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

nnoremap <C-p> :<C-u>FZF<CR>

nnoremap <C-p> :<C-u>FZF<CR>

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
