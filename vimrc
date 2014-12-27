if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=/home/igneo676/.vim/bundle/neobundle.vim/
"  set timeout timeoutlen=1000 ttimeoutlen=1000
endif

call neobundle#begin(expand('/home/igneo676/.vim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'rking/ag.vim'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'tfnico/vim-gradle'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'Shougo/javacomplete', { 'rev' : 'dev' }
NeoBundle 'junegunn/limelight.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Valloric/YouCompleteMe', {
      \ 'build' : {
      \     'linux' : './install.sh',
      \    },
      \ }
"NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'DonnieWest/vim-grand'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'linux' : 'make',
\    },
\ }
NeoBundle 'bling/vim-airline'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-rhubarb'

NeoBundle 'tpope/vim-rvm'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'jeffkreeftmeijer/vim-numbertoggle'
NeoBundle 'tangledhelix/vim-octopress'
NeoBundle 'glidenote/octoeditor.vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rake'
NeoBundle 'airblade/vim-rooter'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'vim-ruby/vim-ruby'
"NeoBundle 'hwartig/vim-seeing-is-believing'
NeoBundle 'tpope/vim-rvm'
NeoBundle 'honza/vim-snippets'
NeoBundle 'tpope/vim-tbone'
NeoBundle 'tpope/vim-unimpaired'
"NeoBundle 'tpope/vim-vinegar'
NeoBundle 'jeetsukumaran/vim-filebeagle'
NeoBundle 'amix/vim-zenroom2'
NeoBundle 'kelsin/vim-imports'
NeoBundle 'Wolfy87/vim-enmasse'
NeoBundle 'Wolfy87/vim-expand'
NeoBundle 'neilagabriel/vim-geeknote'
NeoBundle 'shime/vim-livedown'

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

filetype indent plugin on
syn on

execute pathogen#infect()
set hidden
set number
set wrapscan
set incsearch
set hlsearch
set ignorecase
set smartcase
set infercase
set incsearch
set showmatch
set autoread
set autowrite
set autoindent
set shiftwidth=2
set copyindent
set expandtab
set softtabstop=2
set tabstop=2
set tags=./.tags;,~/.vimtags
set mouse=a
set ignorecase
set smartcase
set lazyredraw
set magic
set ttyfast
set noshowmode
set completeopt+=longest
set shiftround
set autoread
set backspace+=indent,eol,start
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
nnoremap ; :
set showcmd
set t_ut=
set t_Co=256
set laststatus=2
"set timeoutlen=50
set diffopt+=vertical
nnoremap    v   <C-V>
nnoremap <C-V>     v

vnoremap    v   <C-V>
vnoremap <C-V>     v

"Disables preview window
set completeopt-=preview


" Alt + Arrow to move between splits
noremap <silent> <M-Up> :wincmd k<CR>
noremap <silent> <M-Down> :wincmd j<CR>
noremap <silent> <M-Left> :wincmd h<CR>
noremap <silent> <M-Right> :wincmd l<CR>

nmap <F4> :TagbarToggle<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_sep = ''

"Better indent
vnoremap < <gv
vnoremap > >gv

"Use vim-dispatch to run gradleTest
autocmd FileType java nnoremap <F5> :w<bar>Dispatch gradle test -q<CR>

"Run GrandCtags command every time you save a java file
autocmd BufWritePost *.java silent! GrandCtags


"Disable Ex mode
map Q <Nop>
" Disable K looking stuff up

"map K <Nop>

nnoremap <silent> <C-Right> :bnext<CR>
nnoremap <silent> <C-Left> :bprevious<CR>
nnoremap <silent> <C-Up> <c-w>l
nnoremap <silent> <C-Down> <c-w>h
nnoremap <silent> <C-Del> :bd

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

let g:user_emmet_install_global = 0

set pastetoggle=<F1>
nnoremap <F3> :GundoToggle<CR>
let g:NumberToggleTrigger="<F2>"
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

if has ('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Use SilverSearcher instead of Grep
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor\ --smart-case
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

nnoremap \ :Ag<SPACE>
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Move between windows efficiently
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Map ,t to search for my Todos

map <LEADER>t :Ag TODO: <CR>

" Eclim settings
"map <LEADER>i :JavaImport <CR>
"let g:EclimCompletionMethod = 'omnifunc'

" Some default colorschemes I like
"colorscheme hemisu
colorscheme darkburn
"colorscheme jellyx



" Auto completion for Various Languages
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java setlocal completefunc=javacomplete#CompleteParamsInfo
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType html,css,eruby EmmetInstall
autocmd BufNewFile,BufRead *.markdown,*.textile,*md set filetype=octopress
autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = '232'
autocmd FileType octopress setlocal lbr formatoptions=l textwidth=80 spell spelllang=en_us omnifunc=''

noremap <leader>p :call LivedownPreview()<CR> \| :Goyo<CR>

" Other automatic settings for languages
autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType ruby compiler ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 0
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1


"CSS autocomplete - too
autocmd FileType css,scss,sass setlocal iskeyword+=-

" Automatically wrap at 72 characters and spell check git commit messages
autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitcommit setlocal spell

"let g:gradle_path = '/usr/lib/gradle/1.12/'
"let g:android_sdk_path = '/home/igneo676/android-sdk-linux/'

noremap <leader>/ :TComment <ENTER>
vmap <leader>/ :TCommentBlock <ENTER>

" Comment out lines and make TComment behave for java files
" autocmd FileType java map <leader>/ :TCommentAs // <ENTER>
" autocmd FileType java imap <leader>/ :TCommentAs // <ENTER>

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \}

set wildignore+=*/build/*,*/log/*


if &term =~ '^screen' && exists('$TMUX')
    set mouse+=a
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
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

let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" toggles the quickfix window.
command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
  else
    execute "copen " . g:jah_Quickfix_Win_Height
  endif
endfunction

" used to track the quickfix window
augroup QFixToggle
 autocmd!
 autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
 autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END


nmap <silent> <leader>q :QFix<CR>

let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-a>"
let g:UltiSnipsJumpBackwardTrigger="<c-d>"

let g:airline_theme="zenburn"

autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" |
  \ endif

function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <Leader>n :call RenameFile()<cr>

let g:syntastic_java_checkstyle_classpath = "~/Code/checkstyle-6.1.1.jar"
let g:syntastic_java_checkstyle_conf_file = "~/Code/google_checks.xml"


noremap <F9> :call JavaInsertImport()<CR>
function! JavaInsertImport()
  exe "normal mz"
  let cur_class = expand("<cword>")
  try
    if search('^\s*import\s.*\.' . cur_class . '\s*;') > 0
      throw getline('.') . ": import already exist!"
    endif
    wincmd }
    wincmd P
    1
    if search('^\s*public.*\s\%(class\|interface\)\s\+' . cur_class) > 0
      1
      if search('^\s*package\s') > 0
        yank y
      else
        throw "Package definition not found!"
      endif
    else
      throw cur_class . ": class not found!"
    endif
    wincmd p
    normal! G
    " insert after last import or in first line
    if search('^\s*import\s', 'b') > 0
      put y
    else
      1
      put! y
    endif
    substitute/^\s*package/import/g
    substitute/\s\+/ /g
    exe "normal! 2ER." . cur_class . ";\<Esc>lD"
  catch /.*/
    echoerr v:exception
  finally
    " wipe preview window (from buffer list)
    silent! wincmd P
    if &previewwindow
      bwipeout
    endif
    exe "normal! `z"
  endtry
endfunction


noremap <F10> :call JavaSortImport()<CR>
function! JavaSortImport()
  call cursor(1, 1)
  let start = search('^import') "find first line with import
  let end = search('^\(import\|\n\)\@!') "find first non-import line
  let end = end - 1
  execute start.','.end.'sort'
  execute start.','.end.'g/^$/d'
  let newend = search('^\(import\|\n\)\@!') "find first non-import line
  execute 'normal! '.newend.'gg'
  execute 'normal! O'
endfunction
 
command! -nargs=1 Emulator call AndroidEmulator("<args>")
function! AndroidEmulator(emulatorName)
  execute 'silent! Dispatch! /home/igneo676/android-sdk-linux/tools/emulator @'.a:emulatorName." &"
endfunction
