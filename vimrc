let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'vim-airline')
execute pathogen#infect()

filetype plugin indent on

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set noshowmode

syntax enable                " enable syntax processing
set background=dark
colorscheme tir_black
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=darkgrey
hi IndentGuidesEven ctermbg=grey

set laststatus=2        " enable airline
set ttimeoutlen=50       " airline exit insert mode faster

set foldenable          " enable folding
set foldlevelstart=99   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

set tabstop=4                " number of visual spaces per tab
set softtabstop=4            " number of spaces in tab when editing
set shiftwidth=4             " indent size
set expandtab                " tabs are spaces
set smarttab                 " insert indent instead of spaces

set number                   " show line numbers
set showcmd                  " show command in bottom bar
set cursorline               " highlight cursor line
filetype indent on           " load filetype-specific indent files
set wildmenu                 " visual autocomplete for command menu
set lazyredraw               " redraw only when we need to
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

nnoremap <space> za
inoremap jk <esc>       " jk is esc
nnoremap j gj
nnoremap k gk

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

