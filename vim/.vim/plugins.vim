" This is the main plugin list, sourced by modules/plugins.vim
" Configuration goes in the appropriate modules/plugins/*.vim file.
" So configuration for tmux.vim would go in modules/plugins/tmux.vim.vim

Plug 'mhinz/vim-signify' "show diffs in the sign column
Plug 'tpope/vim-abolish' "even if just for coercions
Plug 'tpope/vim-commentary' "lets you comment stuff
Plug 'tpope/vim-eunuch' "Delete, Move, Mkdir, etc...
Plug 'tpope/vim-fugitive' "git support
Plug 'tpope/vim-sensible' "sensible defaults
Plug 'tpope/vim-sleuth' "set buffer options (encoding, tab width, spaces vs tabs...) heuristically
Plug 'tpope/vim-surround' "add, remove and change surroundings (parentheses, tags, brackets). Auto close parentheses, etc.
Plug 'tpope/vim-unimpaired' "some cool mappings
Plug 'tpope/vim-repeat' "repeat (.) support for some of the above plugins
Plug 'tpope/vim-vinegar' " useful netrw things if you don't use any other tree plugin

Plug 'easymotion/vim-easymotion' "jump everywhere
Plug 'bkad/CamelCaseMotion' "adds motions for camelCasedWords
Plug 'haya14busa/incsearch.vim' "better incsearch
Plug 'haya14busa/vim-asterisk' "better * search

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } "file tree
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' } "git support for NERDTree

Plug 'mbbill/undotree' "access all your undo history
Plug 'jeffkreeftmeijer/vim-numbertoggle' "automatically switch between number and relativenumber
Plug 'djoshea/vim-autoread' "detect and reload files changed outside vim

Plug 'tpope/vim-obsession' "manage vim sessions

Plug 'sheerun/vim-polyglot' "support for many languages

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " required by fzf.vim below
Plug 'junegunn/fzf.vim' "fuzzy finder

Plug 'christoomey/vim-tmux-navigator' "easy navigation to tmux panes
Plug 'mileszs/ack.vim' "run your favourite search tool from vim

Plug 'ryanoasis/vim-devicons' "because visuals matter!
Plug 'frazrepo/vim-rainbow' "rainbow parentheses!
Plug 'vim-airline/vim-airline' "status line
Plug 'vim-airline/vim-airline-themes' "airline themes
Plug 'nathanaelkane/vim-indent-guides'
