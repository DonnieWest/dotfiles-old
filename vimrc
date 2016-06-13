" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

"Generic Plugins
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-unimpaired'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'tomtom/tcomment_vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'osyo-manga/vim-over'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-tbone'
Plug 'duggiefresh/vim-easydir'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-projectionist'
Plug 'romainl/vim-qf'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'Raimondi/delimitMate'
Plug 'Firef0x/PKGBUILD.vim'
Plug 'airblade/vim-rooter'
Plug 'honza/vim-snippets'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'uarun/vim-protobuf'
Plug 'Valloric/ListToggle'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'mhinz/vim-grepper'
Plug 'Yggdroot/indentLine'
Plug 'Chiel92/vim-autoformat'
" Plug 'edkolev/tmuxline.vim'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'floobits/floobits-neovim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'
Plug 'easymotion/vim-easymotion'
Plug 'pbrisbin/vim-mkdir'
Plug 'Shougo/unite.vim'
Plug 'KabbAmine/zeavim.vim'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" Colorschemes
Plug 'whatyouhide/vim-gotham'
Plug 'flazz/vim-colorschemes'

" Syntax Checking
Plug 'scrooloose/syntastic'
Plug 'benekastah/neomake', {'on': 'Neomake'}

"Analytics
Plug 'wakatime/vim-wakatime'

"Git plugins
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'mattn/gist-vim'
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'
" Plug 'mhinz/vim-signify' "Good for other VCS other than GIT
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-rhubarb'
"vim-rhubarb variables set in ~/.rhubarb_credentials

"HTML and CSS Plugins
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'Valloric/MatchTagAlways'

"Javascript Plugins
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'carlitux/deoplete-ternjs'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'samuelsimoes/vim-jsx-utils'
Plug 'mlaursen/vim-react-snippets'
Plug 'alampros/vim-react-keywords'

"Typescript Plugins
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi', { 'do': 'npm install -g typescript' }
Plug 'Quramy/vim-js-pretty-template'
Plug 'mhartington/deoplete-typescript'
Plug 'mhartington/vim-typings'

"Java/Android/Gradle plugins
Plug 'mattn/vim-javafmt'
Plug 'vim-jp/vim-java'
Plug 'artur-shaik/vim-javacomplete2', { 'branch': 'master' }
Plug 'idanarye/vim-vebugger'
Plug 'DonnieWest/VimStudio'

" Python Plugins
Plug 'zchee/deoplete-jedi'

"VIMScript Plugins
Plug 'Shougo/neco-vim'

"Markdown/Octopress Plugins

function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    !cargo build --release
    UpdateRemotePlugins
  endif
endfunction

Plug 'rhysd/vim-grammarous'
Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'tangledhelix/vim-octopress'
Plug 'glidenote/octoeditor.vim'
Plug 'amix/vim-zenroom2'

call plug#end()

set hidden
set number
set wrapscan
set incsearch
set ignorecase
set smartcase
set infercase
set showmatch
set autowrite
set shiftround
set shiftwidth=2
set expandtab
set softtabstop=2
set tabstop=2
set ignorecase
set magic
set noshowmode
set completeopt+=longest
set shiftround
set autoread
set whichwrap+=<,>,h,l,[,]
set background=dark
let mapleader=","
set scrolloff=10
nnoremap U :redo<cr>
set undofile
set undodir=~/.vim/undodir
set nobackup
set nowb
set noswapfile
set shortmess+=I
set showcmd
set laststatus=2
set diffopt+=vertical
nnoremap ! :!
nnoremap ; :
set splitbelow
set splitright
set ttimeoutlen=50
set completeopt-=preview
set tags=.tags;
set nofoldenable    " disable folding
set list listchars=tab:»·,trail:·,nbsp:·
set exrc
set secure

let g:NumberToggleTrigger="<F2>"
nnoremap <F4> :TagbarToggle<CR>
nnoremap <F3> :UndotreeToggle<cr>
nnoremap <F5> :IndentLinesToggle<CR>

"Set IndentLines to disabled by default
let g:indentLine_enabled = 0

"Generic wildignores
set wildignore+=*/log/*,*/.git/*,**/*.pyc

nnoremap <leader><space> :call Strip_trailing_whitespace()<CR>
nnoremap <leader>fm :Autoformat<CR>

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
let g:deoplete#omni#input_patterns.java = [
    \'[^. \t0-9]\.\w*',
    \'[^. \t0-9]\->\w*',
    \'[^. \t0-9]\::\w*',
    \]

" Use SilverSearcher instead of Grep
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor\ --smart-case
endif

let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)

map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)

map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

let g:incsearch#auto_nohlsearch = 1
let g:asterisk#keeppos = 1
let g:ag_working_path_mode="r"
"Use unix clipboard
set clipboard+=unnamedplus

" Some default colorschemes I like
" colorscheme darkburn
"colorscheme ego
colorscheme gotham

"Gimme a colored column for lines that are too long
highlight ColorColumn ctermbg=blue
call matchadd('ColorColumn', '\%81v', 100)

" Split window Vertically
nmap <leader>v :vsp<cr>
" Split window horizontally
nmap <leader>h :sp<cr>

"Make visual selection more sane
nnoremap    v   <C-V>
nnoremap <C-V>     v

vnoremap    v   <C-V>
vnoremap <C-V>     v

"Better indent
vnoremap < <gv
vnoremap > >gv

"Disable Ex mode
map Q <Nop>

let g:zv_file_types = {
            \   'cpp'                   : 'c++',
            \   '^(G|g)runtfile\.'      : 'grunt',
            \   '^(G|g)ulpfile\.'       : 'gulp',
            \   '.htaccess'             : 'apache_http_server',
            \   '^(md|mdown|mkd|mkdn)$' : 'markdown',
            \   'java'                   : 'java,android',
            \ }

"Ctrl + Left and Right switch buffers
nnoremap <silent> <C-Right> :bnext<CR>
nnoremap <silent> <C-Left> :bprevious<CR>
nnoremap <silent> <C-Del> :Sayonara<CR>

let g:fugitive_gitlab_domains = ['http://gitlab.intomni.com', 'http://gitlab.codekoalas.com']

"Some nice mappings for ag
nnoremap <C-p> :FZF<ENTER>
nnoremap \  :Ag 

" Map ,t to search for my Todos
map <LEADER>t :Ag TODO: <CR>

" Automatically resize quickfix window to contents
au FileType qf call AdjustWindowHeight(3, 15)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

"Automatically go back to where you were last editing this file
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" |
  \ endif

"Automatically load .vimrc changes
au BufWritePost init.vim so $MYVIMRC

" Automatically resize vim when terminal or tmux pane resized
autocmd VimResized * :wincmd =

" Generic Plugins/

function! VisualFindAndReplace()
    :OverCommandLine%s/
endfunction

function! VisualFindAndReplaceWithSelection() range
    :'<,'>OverCommandLine s/
endfunction

nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>

autocmd User Startified setlocal buftype=
let g:startify_bookmarks = [
            \ { 'c': '~/.config/nvim/init.vim' },
            \ ]

"Make TComment work as I expect
noremap <leader>/ :TComment <CR>
vmap <leader>/ :TCommentBlock<CR>

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-Left> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <Alt-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <M-Up> :TmuxNavigateUp<cr>
nnoremap <silent> <M-Right> :TmuxNavigateRight<cr>

let g:airline_theme="gotham"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_sep = ''

" Ripped out of https://github.com/derekprior/vim-trimmer/blob/master/plugin/vim-trimmer.vim
if !exists("g:trimmer_blacklist")
  let g:trimmer_blacklist = []
endif

function! Strip_trailing_whitespace()
  let l:pos = getpos(".")
  %s/\s\+$//e
  %s/\n\{3,}/\r\r/e
  %s#\($\n\s*\)\+\%$##e
  call setpos(".", l:pos)
endfunction

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['javascript'],'passive_filetypes': ['java', 'typescript'] }

autocmd! BufWritePost * Neomake

" HTML/CSS/Markdown/Octopress Stuff
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css,scss,sass setlocal iskeyword+=-

autocmd BufNewFile,BufRead *.markdown,*.textile,*md set filetype=octopress

autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = '232'
autocmd FileType octopress setlocal lbr formatoptions=l textwidth=80 spell spelllang=en_us omnifunc=''

" Python Stuff
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" Javascript Stuff
let g:polyglot_disabled = ['css', 'javascript']
let g:jsx_ext_required = 0
let g:mustache_abbreviations = 1

" Use tern_for_vim.
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern_show_signature_in_pum = 0  " This do disable full signature type on autocomplete
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

autocmd FileType javascript nnoremap eir :call JSXEncloseReturn()<CR>
autocmd FileType javascript nnoremap oat :call JSXEachAttributeInLine()<CR>
autocmd FileType javascript nnoremap eat :call JSXExtractPartialPrompt()<CR>
autocmd FileType javascript nnoremap cat :call JSXChangeTagPrompt()<CR>
autocmd FileType javascript nnoremap vat :call JSXSelectTag()<CR>
" Typescript Stuff

autocmd! BufWritePost *.ts Neomake
autocmd! BufWritePost *.tsx Neomake
let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }

" Ruby Stuff

autocmd FileType ruby compiler ruby

" Git Stuff

" Automatically wrap at 72 characters and spell check git commit messages
autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitcommit setlocal spell

"VIM Android/Java/Gradle stuff

"XML completion based on CTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

autocmd FileType java nnoremap <F8> :call javacomplete#imports#Add()<CR>
autocmd FileType java nnoremap <F6> :call javacomplete#imports#RemoveUnused()<CR>
autocmd FileType java nnoremap <F7> :call javacomplete#imports#AddMissing()<CR>

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

source ~/.rhubarb_credentials
