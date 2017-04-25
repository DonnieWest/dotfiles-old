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
Plug 'tpope/vim-unimpaired'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'tomtom/tcomment_vim'
Plug 'SirVer/ultisnips'
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
Plug 'jiangmiao/auto-pairs'
Plug 'Firef0x/PKGBUILD.vim'
Plug 'airblade/vim-rooter'
Plug 'honza/vim-snippets'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Valloric/ListToggle'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'mhinz/vim-grepper'
Plug 'Yggdroot/indentLine'
Plug 'Chiel92/vim-autoformat'
" Plug 'edkolev/tmuxline.vim'
Plug 'lervag/file-line'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'
Plug 'pbrisbin/vim-mkdir'
Plug 'Shougo/unite.vim'
Plug 'KabbAmine/zeavim.vim'
Plug 'kshenoy/vim-signature'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'kassio/neoterm'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Shougo/unite.vim'
Plug 'eugen0329/vim-esearch'
Plug 'ynkdir/vim-vimlparser'
Plug 'pgdouyon/vim-evanesco'

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" Colorschemes
Plug 'whatyouhide/vim-gotham'
Plug 'flazz/vim-colorschemes'

" Syntax Checking
Plug 'neomake/neomake', { 'on': 'Neomake' }

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
Plug 'alvan/vim-closetag'

"Javascript Plugins
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'carlitux/deoplete-ternjs'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g DonnieWest/tern' }
Plug 'samuelsimoes/vim-jsx-utils'
Plug 'mlaursen/vim-react-snippets'
Plug 'alampros/vim-react-keywords'
Plug '/home/igneo676/Code/sourcerer.nvim', { 'do': 'npm install && npm install -g neovim-client'}
Plug 'neovim/node-host', { 'do': 'npm install' }
Plug 'mhartington/nvim-typescript'

"Typescript Plugins
Plug 'leafgarland/typescript-vim'
" Plug 'DonnieWest/nvim-typescript', { 'branch': 'compilerOptionsTweaks' }

"Java/Android/Gradle plugins
Plug 'artur-shaik/vim-javacomplete2', { 'branch': 'master' }
Plug 'DonnieWest/VimStudio'
Plug 'npacker/vim-java-syntax-after'

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
Plug 'mrtazz/simplenote.vim'
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
" Plug 'Juev/vim-jekyll'
" Plug 'tpope/vim-liquid'

" C++
Plug 'zchee/deoplete-clang'

call plug#end()

set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
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
set tags=.tags,./tags,tags;
set nofoldenable    " disable folding
set list listchars=tab:»·,trail:·,nbsp:·
set exrc
set secure
set termguicolors
set inccommand=split
set mouse=a

let g:NumberToggleTrigger="<F2>"
nnoremap <F4> :TagbarToggle<CR>
nnoremap <F3> :UndotreeToggle<cr>
nnoremap <F5> :IndentLinesToggle<CR>

"Set IndentLines to disabled by default
let g:indentLine_enabled = 0

" Allow gitgutter on large files
let g:gitgutter_max_signs=10000

"Generic wildignores
set wildignore+=*/log/*,*/.git/*,**/*.pyc

nnoremap <leader><space> :call Strip_trailing_whitespace()<CR>
nnoremap <leader>fm :Autoformat<CR>

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
let g:deoplete#omni#input_patterns.java = [
    \'[^. \t0-9]\.\w*',
    \'[^. \t0-9]\->\w*',
    \'[^. \t0-9]\::\w*',
    \]
let g:deoplete#omni#input_patterns.jsp = ['[^. \t0-9]\.\w*']
let g:deoplete#omni#input_patterns.php = '\h\w*\|[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.java = ['omni']
let g:deoplete#omni#functions = {}
" let g:deoplete#omni#functions.javascript = [
"       \ 'tsuquyomi#complete',
"       \]
let g:deoplete#omni#input_patterns.javascript = '[^. \t]\.\w*'
call deoplete#custom#set('javacomplete2', 'mark', '')
call deoplete#custom#set('_', 'matchers', ['matcher_full_fuzzy'])
"call deoplete#custom#set('omni', 'min_pattern_length', 0)
inoremap <expr><C-h> deoplete#mappings#smart_close_popup()."\<C-h>"
inoremap <expr><BS> deoplete#mappings#smart_close_popup()."\<C-h>"
inoremap <expr><C-x><C-o> deoplete#mappings#manual_complete()
" Use RipGrep instead of Grep
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

let g:incsearch#auto_nohlsearch = 1
let g:asterisk#keeppos = 1
let g:ag_working_path_mode="r"
"Use unix clipboard
set clipboard=unnamedplus

" Some default colorschemes I like
" colorscheme darkburn
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
tnoremap <silent> <C-Right> :bnext<CR>
tnoremap <silent> <C-Left> :bprevious<CR>
tnoremap <silent> <C-Del> :Sayonara<CR>

let g:startify_custom_header = []
let g:fugitive_gitlab_domains = ['http://gitlab.intomni.com', 'http://gitlab.codekoalas.com']

let g:esearch = {
  \ 'adapter':    'rg',
  \ 'backend':    'nvim',
  \ 'out':        'win',
  \ 'batch_size': 1000,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Some nice mappings for ag
nnoremap <C-p> :FZF<ENTER>
if has('nvim')
  aug fzf_setup
    au!
    au TermOpen term://*FZF tnoremap <silent> <buffer><nowait> <esc> <c-c>
  aug END
end

nnoremap \ :GrepperRg 

" Map ,t to search for my Todos
map <LEADER>t :GrepperRg TODO: <CR>

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

nnoremap <Leader>fr :%s/
xnoremap <Leader>fr :s/

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

tnoremap <silent> <M-Left> :TmuxNavigateLeft<cr>
tnoremap <silent> <M-Down> :TmuxNavigateDown<cr>
tnoremap <silent> <Alt-Down> :TmuxNavigateDown<cr>
tnoremap <silent> <M-Up> :TmuxNavigateUp<cr>
tnoremap <silent> <M-Right> :TmuxNavigateRight<cr>
tnoremap <Esc> <C-\><C-n>

let g:airline_theme="gotham"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_sep = ''
let g:airline#extensions#neomake#enabled = 0

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

let g:nvim_typescript#javascript_support = 1
let g:nvim_typescript#max_completion_detail = 200
let g:nvim_typescript#type_info_on_hold = 1
let g:nvim_typescript#signature_complete = 1

autocmd! BufWritePost * Neomake

function! GutentagsFilter(path) abort
    if fnamemodify(a:path, ':e') == 'java'
      return 0
    elseif fnamemodify(a:path, ':e') == ''
      return 0
    elseif fnamemodify(a:path, ':e') == 'xml'
      return 0
    elseif fnamemodify(a:path, ':e') == 'gradle'
      return 0
    else
      return 1
    endif
endfunction

let g:gutentags_enabled_user_func = 'GutentagsFilter'

" HTML/CSS/Markdown/Octopress Stuff
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css,scss,sass setlocal iskeyword+=-

autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = '232'

" Python Stuff
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
let g:python_host_prog = '/bin/python2'
let g:python3_host_prog = '/bin/python3'

" Javascript Stuff
let g:polyglot_disabled = ['css', 'javascript']
let g:jsx_ext_required = 0
let g:mustache_abbreviations = 1

" Use tern_for_vim.
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
let g:nvim_typescript#javascript_support = 1
let g:tsuquyomi_javascript_support = 1
let g:tsuquyomi_auto_open = 1
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_completion_detail = 1

" autocmd FileType javascript setlocal omnifunc=tsuquyomi#complete
autocmd FileType javascript nnoremap eir :call JSXEncloseReturn()<CR>
autocmd FileType javascript nnoremap oat :call JSXEachAttributeInLine()<CR>
autocmd FileType javascript nnoremap eat :call JSXExtractPartialPrompt()<CR>
autocmd FileType javascript nnoremap cat :call JSXChangeTagPrompt()<CR>
autocmd FileType javascript nnoremap vat :call JSXSelectTag()<CR>
" Typescript Stuff

" Enable error checking with Typescript files
autocmd BufWritePost *.ts,*.tsx silent! call tsuquyomi#reloadAndGeterr()
let g:neomake_warning_sign = {
  \ 'text': '?',
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_error_sign = {
  \ 'text': 'X',
  \ 'texthl': 'ErrorMsg',
  \ }

" Git Stuff

" Automatically wrap at 72 characters and spell check git commit messages
autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitcommit setlocal spell

"VIM Android/Java/Gradle stuff

"XML completion based on CTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java nnoremap <F8> <Plug>(JavaComplete-Imports-Add)
autocmd FileType java inoremap <F8> <Plug>(JavaComplete-Imports-Add)
autocmd FileType java nnoremap <F7> <Plug>(JavaComplete-Imports-AddMissing)
autocmd FileType java inoremap <F7> <Plug>(JavaComplete-Imports-AddMissing)
autocmd FileType java nnoremap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)
autocmd FileType java inoremap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)
let g:JavaComplete_ImportSortType = 'packageName'
let g:JavaComplete_ImportOrder = ['android.', 'com.', 'junit.', 'net.', 'org.', 'java.', 'javax.']

let g:formatdef_google_java_format = "'java -jar /home/igneo676/Code/google-java-format.jar --lines '.a:firstline.':'.a:lastline.' -'"
let g:formatters_java = ['google_java_format']

let java_highlight_functions = 'style'
let java_highlight_all = 1
let java_highlight_debug = 1

let g:SimplenoteFiletype = 'markdown'


let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

source ~/.rhubarb_credentials
source ~/.simplenoterc
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang' 

set diffopt+=iwhite
set diffexpr=DiffW()
function DiffW()
  let opt = ""
  if &diffopt =~ "icase"
    let opt = opt . "-i "
  endif
  if &diffopt =~ "iwhite"
    let opt = opt . "-w " " swapped vim's -b with -w
  endif
  silent execute "!diff -a --binary " . opt .
    \ v:fname_in . " " . v:fname_new .  " > " . v:fname_out
endfunction
let g:startify_change_to_vcs_root = 1
let g:qf_auto_open_loclist = 0
