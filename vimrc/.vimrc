"""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
" Interactive command execution
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Unite. The interface to rule almost everything
" Plug 'Shougo/unite.vim'
" Most Recently Used
Plug 'Shougo/neomru.vim'
" Add filetype glyphs (icons)
" Plug 'ryanoasis/vim-devicons'
Plug 'cj/vim-webdevicons'
" Command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
if has('nvim')
  " Asynchronous completion for neovim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
  " Tern-based JavaScript editing support
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': ['javascript', 'javascript.jsx'] }
else
  " Code completion
  Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
endif
" Emmet for vim
Plug 'mattn/emmet-vim'
" Code search and view tool
Plug 'dyng/ctrlsf.vim'
" BufExplorer quickly and easily switch between buffer
Plug 'jlanzarotta/bufexplorer'
" Tree explorer for vim.
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
" Asynchronous Lint Engine
Plug 'w0rp/ale'
" Cache file automatically
Plug 'MarcWeber/vim-addon-mw-utils'
" Lean & mean status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Comment stuff out
Plug 'tpope/vim-commentary'
" Visually select larger regions of text using the same key combination
Plug 'terryma/vim-expand-region'
" Git wrapper
Plug 'tpope/vim-fugitive'
" SCSS syntax highlighting
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
" Markdown syntax highlighting
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'gabrielelana/vim-markdown'
" Enable repeating supported plugin maps
Plug 'tpope/vim-repeat'
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'

" vue snippets 
Plug 'FuDesign2008/vue-snippets.vim'
Plug 'mlaursen/vim-react-snippets'
Plug 'tpope/vim-surround'
" Display indention levels with vertical lines
Plug 'Yggdroot/indentLine'
" Tmux statusline generator with support for airline
Plug 'edkolev/tmuxline.vim'
" Undo history visualizer
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
" Preview colors in source code
Plug 'ap/vim-css-color'
" CSS3 syntax support
Plug 'hail2u/vim-css3-syntax'
" Vim motions on speed
Plug 'easymotion/vim-easymotion'
" Shows a git diff in the gutter
Plug 'airblade/vim-gitgutter'
" Instant Markdown previews
" Plug 'suan/vim-instant-markdown', { 'for': 'markdown' }
" Jade syntax highlighting
" Plug 'digitaltoad/vim-pug', { 'for': ['jade', 'pug'] }
" Javascript indentation and syntax support
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
" for higlhighting tsx files
Plug 'HerringtonDarkholme/yats.vim'
" or Plug 'leafgarland/typescript-vim'
" new jsx syntax highlighting
Plug 'MaxMEllon/vim-jsx-pretty'
"Yet Another JavaScript Syntax
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
" ES.Next syntax
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Syntax for JavaScript libraries
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Block comments based on a function signature
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx'] }
" Syntax for styled-components
Plug 'fleischie/vim-styled-components', { 'for': ['javascript', 'javascript.jsx'] }
" Sublime Text style multiple selections
Plug 'terryma/vim-multiple-cursors'
" Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-navigator'
" Zoom in/out of windows
Plug 'troydm/zoomwintab.vim'
" Gotham colorscheme
" Plug 'whatyouhide/vim-gotham'
" Oceanic Next colorscheme
Plug 'mhartington/oceanic-next'
" Solarized colorscheme
Plug 'altercation/vim-colors-solarized'
" Vim Orgmode
Plug 'jceb/vim-orgmode', { 'for': 'org' }
" Increment dates, times, and more
Plug 'tpope/vim-speeddating', { 'for': 'org' }
" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'
" EditorConfig for consistent coding style
Plug 'editorconfig/editorconfig-vim'
" Provides additional text objects
Plug 'wellle/targets.vim'
" Speed up Vim by updating folds only when called-for
Plug 'Konfekt/FastFold'
" Metrics, insights, and time tracking
" Plug 'wakatime/vim-wakatime'
Plug 'ryanoasis/vim-devicons'
Plug 'rainglow/vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'posva/vim-vue'
Plug 'wdhg/dragon-energy'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'mhinz/vim-startify'
Plug 'junegunn/vim-easy-align'
" this way pretiier applies to all extensions
" post install (yarn install | npm install)
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

Plug 'sudar/vim-wordpress-snippets'
Plug 'mxw/vim-jsx'

" colorized brackets
Plug 'frazrepo/vim-rainbow'


" colors
Plug 'sjkdev/edge'
Plug 'sainnhe/sonokai'
Plug 'crusoexia/vim-monokai'
Plug 'levelone/tequila-sunrise.vim'
Plug 'jcherven/jummidark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'matveyt/vim-modest'
Plug 'crusoexia/vim-monokai'
Plug 'sickill/vim-monokai'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'Rigellute/rigel'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'wdhg/dragon-energy'
Plug 'chriskempson/base16-vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" Track the engine.
Plug 'SirVer/ultisnips'

" ts syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'


call plug#end()

" vim airline
let g:airline_powerline_fonts = 1

" disable folding automatically
set nofoldenable    " disable folding

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"



" for c#/ omnisharp pluign
let g:OmniSharp_server_stdio = 1

" syntax for BufWrite/ read etc
" au BufNewFile,BufRead *.py,*.php,*.rb,*.html,*.js,*.ts,*.md,*.jsx,*.java,*.css,*.scss,*.sass

"" jedi vim
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

"" deoplete
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"" airline theme
" let g:airline_theme='<theme>' " <theme> is a valid theme name

"" gruvbox
set background=dark " use dark mode
" set background=light " uncomment to use light mode

" emmet vim
let g:user_emmet_leader_key='<C-z>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" linters
let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\   'javascript': ['eslint'],
\   'vue': ['eslint']
\}


" Many of the linters (like eslint) can also fix your code, which is very handy.
let g:ale_fixers = {
  \    'javascript': ['eslint'],
  \    'typescript': ['prettier', 'tslint'],
  \    'vue': ['eslint'],
  \    'scss': ['prettier'],
  \    'html': ['prettier'],
  \    'reason': ['refmt']
\}
let g:ale_fix_on_save = 1

" Another useful feature is navigating to the next / previous error with ]r / [r.
nnoremap ]r :ALENextWrap<CR>     " move to the next ALE warning / error
nnoremap [r :ALEPreviousWrap<CR> " move to the previous ALE warning / error

" eslint 
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" skywind30000 async
autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

" language server user_emmet_settings
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

" nerdtree
:let mapleader = "\<Space>"
nnoremap <Leader>a :echo "Hey there space"<CR>
nmap <leader>, :NERDTreeToggle<cr>

" refresh nerdtree
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
" vim jsx // now deprecated
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1

" pangloss
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" let g:javascript_conceal_function             = "ƒ"
" let g:javascript_conceal_null                 = "ø"
" let g:javascript_conceal_this                 = "@"
" let g:javascript_conceal_return               = "⇚"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
" let g:javascript_conceal_prototype            = "¶"
" let g:javascript_conceal_static               = "•"
" let g:javascript_conceal_super                = "Ω"
" let g:javascript_conceal_arrow_function       = "⇒"
" let g:javascript_conceal_noarg_arrow_function = "🞅"
" let g:javascript_conceal_underscore_arrow_function = "🞅"

set conceallevel=1

"js plugin flow
" Once vim-javascript is installed you enable flow highlighting
let g:javascript_plugin_flow = 1

"vue ale config
let g:ale_fixers = {'vue': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fix_on_save = 1
let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss']}

" set tab spaces
set tabstop=2 shiftwidth=2 expandtab

" set numbers
:set number

"Custom Config
set encoding=utf-8
set fileencoding=utf-8
set number
set mouse=a
syntax on
set splitright
set splitbelow
set backupcopy=yes
set signcolumn=yes

" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" disbale auto folding with plasticboy/markdown
let g:vim_markdown_folding_disabled = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-a>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-e>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" tomas molokai
let g:molokai_original = 1

" airline
let g:airline_theme='simple'
let g:airline_powerline_fonts = 1
"vim-airline/vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" let g:rigel_airline = 1
" let g:airline_theme = 'rigel'

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = 'Ɇ'
 let g:airline_symbols.whitespace = 'Ξ'
" " powerline symbols
" let g:airline_left_sep = "\ue0c4"
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = "\ue0c5"
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = 'שׂ'
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.maxlinenr = ''
set t_Co=256

" set solarized terminal colors to 256
let g:solarized_termcolors=256

" easy motion config
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" set guifont for file icons
map <F3> <Esc>:set guifont=*<CR>

au BufWinEnter * set number

" vim easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap za <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap za <Plug>(EasyAlign)" let g:shades_of_purple_airline = 1
" let g:airline_theme='shades_of_purple'

" buffer split hack
" Vertical Split Buffer Function
function VerticalSplitBuffer(buffer)
    execute "vert belowright sb" a:buffer 
endfunction

" Mapping
" Vertical Split Buffer Mapping
command -nargs=1 Vbuffer call VerticalSplitBuffer(<f-args>)" terminal color

" switch buffers mapping
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

syntax enable
" to deal with large file load error redraw
syntax sync minlines=10000

" set wrap on buffer window
set wrap linebreak nolist

" no using arrow keys for hjkl

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" "
""-----------------------------
"    make custom snippets
"_____________________________

let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/custom_snippets']

set termguicolors
syntax enable
" set background=light
set background=dark
" colorscheme sickill-monokai
" colorscheme crusoe-monokai
" colorscheme sublimemonokai
" colorscheme sonokai
" colorscheme monokai
" colorscheme molokai
" colorscheme tequila-sunrise
" colorscheme vimatomdark
" colorscheme jummidark
colorscheme edge
" colorscheme dragon-energy
" colorscheme shades-of-purple
" colorscheme vim-colors-synthwave

" colorscheme challenger_deep
" colorscheme rigel
" ayu colorscheme
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu
" colorscheme base16-default-dark
" colorscheme solarized8
