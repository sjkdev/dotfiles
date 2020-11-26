" plugins

call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'Chiel92/vim-autoformat'
Plug 'easymotion/vim-easymotion'
Plug 'farmergreg/vim-lastplace'
Plug 'kristijanhusak/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'mattn/emmet-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pbrisbin/vim-mkdir'
Plug 'thinca/vim-quickrun'
Plug 'joom/vim-commentary'
Plug 'vim-scripts/Align'
Plug 'valloric/MatchTagAlways'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'garbas/vim-snipmate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug '907th/vim-auto-save'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'crusoexia/vim-monokai'
"" Plug 'valloric/youcompleteme'
"" Plug 'ajh17/vimcompletesme'
Plug 'bkad/CamelCaseMotion'

"" css/ sass colorscheme
"" Plug 'shmargum/vim-sass-colors'
Plug 'ap/vim-css-color'
"" Plug 'gorodinskiy/vim-coloresque'

"" deoplete
""if has('nvim')
""	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
""else
""	Plug 'Shougo/deoplete.nvim'
""	Plug 'roxma/nvim-yarp'
""	Plug 'roxma/vim-hug-neovim-rpc'
"" endif
"" let g:deoplete#enable_at_startup = 1

"" JS
Plug 'pangloss/vim-javascript'
Plug 'skywind3000/asyncrun.vim'
Plug 'prettier/prettier'

"" React
" ES2015 code snippets (Optional)
" Plug 'epilande/vim-es2015-snippets'

" React code snippets
Plug 'epilande/vim-react-snippets'

" Ultisnips
Plug 'SirVer/ultisnips'

" Trigger configuration (Optional)
let g:UltiSnipsExpandTrigger="<C-z>"
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'w0rp/ale'

Plug 'trusktr/seti.vim'

"" Node
Plug 'moll/vim-node'
Plug 'kern/vim-es7'

Plug 'bling/vim-airline'

"" gruvbox plugin
" Plug 'morhetz/gruvbox'

"" fuzzy finder

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

"" language
Plug 'sheerun/vim-polyglot'

"" color
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'trusktr/seti.vim'
Plug 'cocopon/iceberg.vim'
Plug 'levelone/tequila-sunrise.vim'
Plug 'lithammer/vim-eighties'


" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'


call plug#end()