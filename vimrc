" Install Vim Plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()
"Generic Plugins

Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
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
Plug 'tpope/vim-projectionist'
Plug 'romainl/vim-qf'
Plug 'rking/ag.vim'
Plug 'tpope/vim-abolish'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-endwise'
Plug 'sjl/gundo.vim'
Plug 'flazz/vim-colorschemes'
Plug 'Firef0x/PKGBUILD.vim'
Plug 'airblade/vim-rooter'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-tbone'
Plug 'Wolfy87/vim-enmasse'
Plug 'Wolfy87/vim-expand'
Plug 'christoomey/vim-tmux-navigator'
Plug 'uarun/vim-protobuf'
Plug 'Valloric/ListToggle'

Plug 'Shougo/deoplete.nvim'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'Shougo/vimproc.vim', { 'do': 'make' }


"Git plugins
Plug 'mattn/gist-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
"vim-rhubarb variables set in ~/.rhubarb_credentials

"HTML and CSS Plugins
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
Plug 'Valloric/MatchTagAlways'

"Javascript Plugins
Plug 'jelera/vim-javascript-syntax'
Plug 'wookiehangover/jshint.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ain/vim-npm'
Plug 'ain/vim-bower'
Plug 'camthompson/vim-ember'
" Plug 'marijnh/tern_for_vim'

"Java/Android/Gradle plugins
Plug 'rudes/vim-java'
Plug 'artur-shaik/vim-javacomplete2', { 'branch': 'development'}
Plug 'idanarye/vim-vebugger'
Plug 'tfnico/vim-gradle'
Plug 'DonnieWest/VimStudio'
"This one is an editted version of 'meonlol/vim-grand' and works with all
"gradle projects
" Plug 'DonnieWest/vim-grand', { 'branch' : 'develop' }

"Ruby Plugins
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rvm'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
" Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rvm'
Plug 'thoughtbot/vim-rspec'
Plug 'osyo-manga/vim-monster'

"Markdown/Octopress Plugins
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'tangledhelix/vim-octopress'
Plug 'shime/vim-livedown'
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
" set smartindent
set shiftwidth=2
" set copyindent
set expandtab
set softtabstop=2
set tabstop=2
set ignorecase
set smartcase
" set lazyredraw
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
set t_ut=
set t_Co=256
set laststatus=2
set diffopt+=vertical
nnoremap ! :! 
nnoremap ; :
set splitbelow
set splitright
set ttimeoutlen=50
" set completeopt-=preview

set pastetoggle=<F1>
nnoremap <F3> :GundoToggle<CR>
let g:NumberToggleTrigger="<F2>"
nmap <F4> :TagbarToggle<CR>

"Generic wildignores
set wildignore+=*/build/*,*/log/*

"Make VIM play nicely with TMUX
if &term =~ '^screen' && exists('$TMUX')
    " tmux will send xterm-style keys when xterm-keys is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
    execute "set <xHome>=\e[1;*H"
    execute "set <xEnd>=\e[1;*F"
    execute "set <Insert>=\e[2;*~"
    execute "set <Delete>=\e[3;*~"
    execute "set <PageUp>=\e[5;*~"
    execute "set <PageDown>=\e[6;*~"
    execute "set <xF1>=\e[1;*P"
    execute "set <xF2>=\e[1;*Q"
    execute "set <xF3>=\e[1;*R"
    execute "set <xF4>=\e[1;*S"
    execute "set <F5>=\e[15;*~"
    execute "set <F6>=\e[17;*~"
    execute "set <F7>=\e[18;*~"
    execute "set <F8>=\e[19;*~"
    execute "set <F9>=\e[20;*~"
    execute "set <F10>=\e[21;*~"
    execute "set <F11>=\e[23;*~"
    execute "set <F12>=\e[24;*~"
endif

" Use SilverSearcher instead of Grep
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor\ --smart-case
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

"Use unix clipboard
set clipboard+=unnamedplus

" Some default colorschemes I like
"colorscheme railscasts
"colorscheme hemisu
colorscheme darkburn
"colorscheme jellyx

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

" Disable K looking stuff up
"map K <Nop>

"Ctrl + Left and Right switch buffers
nnoremap <silent> <C-Right> :bnext<CR>
nnoremap <silent> <C-Left> :bprevious<CR>
nnoremap <silent> <C-Del> :bd


"Some nice mappings for ag
nnoremap \ :Ag<SPACE>
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


" Map ,t to search for my Todos
map <LEADER>t :Ag TODO: <CR>


"Mapping to toggle quickfix window
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

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
au BufWritePost .vimrc so $MYVIMRC

" Automatically resize vim when terminal or tmux pane resized
autocmd VimResized * :wincmd =

" Generic Plugins

function! VisualFindAndReplace()
    :OverCommandLine%s/
endfunction

function! VisualFindAndReplaceWithSelection() range
    :'<,'>OverCommandLine s/
endfunction

nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>


"Make TComment work as I expect
noremap <leader>/ :TComment <ENTER>
vmap <leader>/ :TCommentBlock <ENTER>

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-Left> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <Alt-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <M-Up> :TmuxNavigateUp<cr>
nnoremap <silent> <M-Right> :TmuxNavigateRight<cr>

" let g:UltiSnipsExpandTrigger="<c-h>"
" let g:UltiSnipsJumpForwardTrigger="<c-a>"
" let g:UltiSnipsJumpBackwardTrigger="<c-d>"

let g:airline_theme="zenburn"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_sep = ''


" let g:ycm_filetype_blacklist = {
"       \ 'tagbar' : 1,
"       \ 'qf' : 1,
"       \ 'notes' : 1,
"       \ 'markdown' : 1,
"       \ 'unite' : 1,
"       \ 'text' : 1,
"       \ 'vimwiki' : 1,
"       \}
"
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]
" let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
" let g:ycm_server_keep_logfiles = 1


"Deoplete stuff
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

inoremap <expr><C-y>  deoplete#mappings#close_popup()
inoremap <expr><C-e>  deoplete#mappings#cancel_popup()

" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> deolete#mappings#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> deoplete#mappings#smart_close_popup()."\<C-h>"

let g:deoplete#omni_patterns = {}

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

noremap <leader>p :call LivedownPreview()<CR> \| :Goyo<CR>

" Python Stuff

autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" Javascript Stuff
"autocmd FileType javascript setlocal omnifunc=jscomplete#CompleteJS
let g:mustache_abbreviations = 1

" Ruby Stuff

let g:deoplete#omni_patterns.ruby = ['[^. *\t]\.\w*', '\h\w*::']
" autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType ruby compiler ruby
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 0
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
" autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1

" Git Stuff

" Automatically wrap at 72 characters and spell check git commit messages
autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitcommit setlocal spell


"VIM Android/Java/Gradle stuff

let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'

"XML completion based on CTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"Setup Javacomplete2 as omnifunc
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java setlocal completefunc=javacomplete#CompleteParamsInfo

"Use vim-dispatch to run gradleTest
autocmd FileType java nnoremap <F5> :w<bar>Make test<CR>

autocmd FileType java nnoremap <F8> :call javacomplete#AddImport()<CR>
autocmd FileType java nnoremap <F6> :call javacomplete#RemoveUnusedImports()<CR>
autocmd FileType java nnoremap <F7> :call javacomplete#AddMissingImports()<CR>

"Tell syntastic where checkstyle is and use Google's checks
let g:syntastic_java_checkstyle_classpath = "~/Code/checkstyle-6.1.1.jar"
let g:syntastic_java_checkstyle_conf_file = "~/Code/google_checks.xml"

command! -nargs=1 Emulator call AndroidEmulator("<args>")
function! AndroidEmulator(emulatorName)
  execute 'silent! Dispatch! /home/igneo676/android-sdk-linux/tools/emulator @'.a:emulatorName." &"
endfunction

"" Temporary Junk Yard until I'm certain I really like my VimStudio Plugin

" "Make Vim-Grand like an IDE - automatically detect changes to libraries in
" "build.gradle and reload new classpath
" au BufWritePost build.gradle call GrandPathsOnBuildScriptChanged()
" function! GrandPathsOnBuildScriptChanged() 
"   call delete('.grand_source_paths')
"   call delete('.output_paths_result')
"   execute '!./gradlew outputPaths'
"   GrandSetup
" endfunction
"
" " When VIM is started, if the current directory contains a build.gradle file
" " without a paths file, it will tell Gradle to generate said file and load the
" " classpath to Javacomplete2
" autocmd VimEnter * call GrandPathsIfGradle()
" function! GrandPathsIfGradle()
"   if filereadable("build.gradle")
"     if !filereadable(".output_paths_result")
"       silent execute "Dispatch! ./gradlew outputPaths" | GrandSetup
"     endif
"   endif
" endfunction


"Run GrandCtags command every time you save a java file
" autocmd BufWritePost *.java silent! GrandCtags

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" blinking vertical bar
" let &t_SI .= "\<Esc>[6 q"
" solid block
" let &t_EI .= "\<Esc>[2 q"
" 1 or 0 -> blinking block
" 2 solid block
" 3 -> blinking underscore
" 4 horizontal bar
" Recent versions of xterm (282 or above) also support
" 5 -> blinking vertical bar
" 6 -> solid vertical bar


source ~/.rhubarb_credentials
