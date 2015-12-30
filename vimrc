" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

"Generic Plugins
Plug 'scrooloose/syntastic'
Plug 'pgdouyon/vim-accio'
Plug 'mbbill/undotree'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-unimpaired'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'tomtom/tcomment_vim'
Plug 'SirVer/ultisnips'
Plug 'osyo-manga/vim-over'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-projectionist'
Plug 'romainl/vim-qf'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'Raimondi/delimitMate'
Plug 'flazz/vim-colorschemes'
Plug 'Firef0x/PKGBUILD.vim'
Plug 'airblade/vim-rooter'
Plug 'honza/vim-snippets'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'uarun/vim-protobuf'
Plug 'Valloric/ListToggle'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mhinz/vim-grepper'
Plug 'Yggdroot/indentLine'
Plug 'Chiel92/vim-autoformat'

"Git plugins
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'mattn/gist-vim'
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'
" Plug 'mhinz/vim-signify' "Good for other VCS other than GIT
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
"vim-rhubarb variables set in ~/.rhubarb_credentials

"HTML and CSS Plugins
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
Plug 'Valloric/MatchTagAlways'
Plug 'KabbAmine/vCoolor.vim'

"Javascript Plugins
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ain/vim-npm'
Plug 'ain/vim-bower'
Plug 'camthompson/vim-ember'
Plug 'dpsxp/vim-jshint-compiler'

"Typescript Plugins
Plug 'leafgarland/typescript-vim'

"Java/Android/Gradle plugins
Plug 'mattn/vim-javafmt'
Plug 'vim-jp/vim-java'
Plug 'artur-shaik/vim-javacomplete2', { 'branch': 'master'}
Plug 'idanarye/vim-vebugger'
Plug 'hsanson/vim-android'

"Ruby Plugins
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rvm'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
" Plug 'vim-ruby/vim-ruby' "Incompatible with Neovim
Plug 'thoughtbot/vim-rspec'

"Markdown/Octopress Plugins

function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    !cargo build --release
    UpdateRemotePlugins
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'tangledhelix/vim-octopress'
Plug 'glidenote/octoeditor.vim'
Plug 'amix/vim-zenroom2'

call plug#end()


filetype indent plugin on
syn on

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
set smartcase
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


" Use SilverSearcher instead of Grep
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor\ --smart-case
endif

let g:ag_working_path_mode="r"
"Use unix clipboard
set clipboard+=unnamedplus

" Some default colorschemes I like
colorscheme darkburn

"Gimme a colored column for lines that are too long
highlight ColorColumn ctermbg=magenta
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

"Ctrl + Left and Right switch buffers
nnoremap <silent> <C-Right> :bnext<CR>
nnoremap <silent> <C-Left> :bprevious<CR>
nnoremap <silent> <C-Del> :bd

let g:fugitive_gitlab_domains = ['http://gitlab.intomni.com']

"Some nice mappings for ag
nnoremap <C-p> :FZF<ENTER>

command! -nargs=* -complete=file Ag Grepper! -tool ag -query <args>
nnoremap \  :Grepper! -tool ag  -open -switch<cr>
" nnoremap \ :Ag<SPACE>
" nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


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


"Make TComment work as I expect
noremap <leader>/ :TComment <CR>
vmap <leader>/ :TCommentBlock<CR>

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-Left> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <Alt-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <M-Up> :TmuxNavigateUp<cr>
nnoremap <silent> <M-Right> :TmuxNavigateRight<cr>

let g:airline_theme="zenburn"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_sep = ''

let g:ycm_use_ultisnips_completer=1
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

" thanks to http://vimcasts.org/e/4
function! Strip_trailing_whitespace()
  let previous_search=@/
  let previous_cursor_line=line('.')
  let previous_cursor_column=col('.')
  %s/\s\+$//e
  let @/=previous_search
  call cursor(previous_cursor_line, previous_cursor_column)
endfunction

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \}

" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:ultisnips_java_brace_style="none"

" HTML/CSS/Markdown/Octopress Stuff

let g:user_emmet_install_global = 0

autocmd FileType html,css,eruby EmmetInstall
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
let g:mustache_abbreviations = 1
let g:tern_request_timeout = 6000
" autocmd! BufWritePost *.js Accio jshint

" Ruby Stuff

autocmd FileType ruby compiler ruby

" Git Stuff

" Automatically wrap at 72 characters and spell check git commit messages
autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitcommit setlocal spell


"VIM Android/Java/Gradle stuff

"Make vim-rooter recognize build.gradle as the top of the directory
" let g:rooter_patterns = [ 'build.gradle', '.git', '.git/', '_darcs/', '.hg/', '.bzr/', '.svn/']

let g:syntastic_mode_map = { 'passive_filetypes': ['java'] }
autocmd! BufWritePost *.java Accio gradle test
autocmd FileType java nnoremap <buffer> <leader>fm :JavaFmt<CR>

"XML completion based on CTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"Setup Javacomplete2 as omnifunc
autocmd FileType java setlocal omnifunc=javacomplete#Complete

autocmd FileType java nnoremap <F8> :call javacomplete#imports#Add()<CR>
autocmd FileType java nnoremap <F6> :call javacomplete#imports#RemoveUnused()<CR>
autocmd FileType java nnoremap <F7> :call javacomplete#imports#AddMissing()<CR>


let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

source ~/.rhubarb_credentials
