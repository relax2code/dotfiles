" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.config/nvim/plugged')

" === Editing Plugins === "
" Trailing whitespace highlighting & automatic fixing
Plug 'ntpeters/vim-better-whitespace'

" auto-close plugin
Plug 'rstacruz/vim-closer'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'

" Intellisense Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-denite'

" Denite - Fuzzy finding, buffer management
Plug 'Shougo/denite.nvim'

" Fzf
Plug 'junegunn/fzf', { 'do':{ -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Snippet support
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Print function signatures in echo area
Plug 'Shougo/echodoc.vim'

" === Git Plugins === "
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Elixir
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir', 'eelixir'] }
Plug 'tpope/vim-endwise',    { 'for': ['ruby', 'elixir'] }
Plug 'lucidstack/hex.vim'
Plug 'mattn/webapi-vim'
" Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
let g:coc_global_extensions = ['coc-elixir', 'coc-diagnostic']

" Rust
Plug 'rust-lang/rust.vim'
Plug 'fannheyward/coc-rust-analyzer'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'christoomey/vim-tmux-navigator'

" === Javascript Plugins === "
" Typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" ReactJS JSX syntax highlighting
Plug 'mxw/vim-jsx'

" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'

" === Syntax Highlighting === "
Plug 'mattn/emmet-vim'
" Syntax highlighting for nginx
Plug 'chr4/nginx.vim'

" Syntax highlighting for javascript libraries
Plug 'othree/javascript-libraries-syntax.vim'

" Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'

" === UI === "
" File explorer
Plug 'scrooloose/nerdtree'

" Colorscheme
Plug 'sainnhe/gruvbox-material'
Plug 'mhartington/oceanic-next'
Plug 'tomasiser/vim-code-dark'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
" Undotree
Plug 'mbbill/undotree'

" Ripgrep
Plug 'jremmen/vim-ripgrep'

Plug 'kassio/neoterm'

Plug 'tpope/vim-surround'
" Initialize plugin system
call plug#end()
