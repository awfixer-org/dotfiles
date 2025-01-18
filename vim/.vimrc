call plug#begin()


Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-sensible'
Plug 'vimsence/vimsence'
Plug 'dense-analysis/ale'
Plug 'wellle/tmux-complete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'wellle/tmux-complete.vim'
Plug 'vim-test/vim-test'
Plug 'nanotee/zoxide.vim'
Plug 'pechorin/any-jump.vim'
Plug 'skywind3000/vim-quickui'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-abolish'
Plug 'vim-scripts/Align'
Plug 'Raimondi/delimitMate'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-expand-region'
Plug 'sjl/gundo.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'wellle/targets.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-unimpaired'
Plug 'wellle/visual-split.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/vim-gist'
Plug 'tpope/vim-fugitive'
Plug 'github/copilot.vim'
Plug 'blueyed/vim-diminactive'
Plug 'farmergreg/vim-lastplace'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'wsdjeg/FlyGrep.vim'
Plug 'mileszs/ack.vim'
Plug 'devjoe/vim-codequery'
Plug 'fatih/vim-go'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'SidOfc/mkdx'
Plug 'python-mode/python-mode'
Plug 'kezhenxu94/vim-mysql-plugin'
Plug 'sukima/xmledit'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
Plug 'williamboman/mason.nvim'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'williamboman/mason.nvim'

call plug#end()

syntax enable
silent! colorscheme seoul256
