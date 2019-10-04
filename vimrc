" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
let g:node_host_prog = '/home/igneo676/bin/neovim-node-host'
call plug#begin()

"Generic Plugins
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-tbone'
Plug 'duggiefresh/vim-easydir'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-projectionist'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'idanarye/vim-vebugger', { 'branch': 'develop' }
Plug 'justinmk/vim-sneak'

" VIM Quirks fixes
Plug 'lervag/file-line'
Plug 'pbrisbin/vim-mkdir'
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'romainl/vim-qf'
Plug 'eugen0329/vim-esearch'
Plug 'ynkdir/vim-vimlparser'
Plug 'tpope/vim-unimpaired'
Plug 'airblade/vim-rooter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Valloric/ListToggle'
Plug 'Yggdroot/indentLine'
Plug 'pgdouyon/vim-evanesco'
Plug 'kana/vim-operator-user'
Plug 'machakann/vim-highlightedyank'
Plug 'kshenoy/vim-signature'
Plug 'Firef0x/PKGBUILD.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'blueyed/vim-diminactive'

" UI
Plug 'whatyouhide/vim-gotham'
Plug 'mhartington/oceanic-next'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'mgee/lightline-bufferline'
Plug 'maximbaz/lightline-ale'
Plug 'haishanh/night-owl.vim'
" Plug 'edkolev/tmuxline.vim'
Plug 'luochen1990/rainbow'
Plug 'chrisbra/Colorizer'
Plug 'justinmk/nvim-repl'

" Generic IDE features

Plug 'simnalamburt/vim-mundo'
Plug 'rhysd/clever-f.vim'
Plug 'tomtom/tcomment_vim'
Plug 'mbbill/undotree'
Plug 'justinmk/vim-dirvish'
Plug 'mg979/vim-visual-multi', {'branch': 'test'}
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
Plug 'prabirshrestha/async.vim'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'tpope/vim-db'

Plug 'Shougo/context_filetype.vim'
Plug 'kassio/neoterm'
Plug 'ludovicchabant/vim-gutentags'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'
" Plug 'w0rp/ale'
Plug 'DonnieWest/ale', {'branch': 'aleSymbolSupport'}
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'metakirby5/codi.vim'

Plug 'editorconfig/editorconfig-vim'
Plug 'justinmk/vim-gtfo'
Plug 'sunaku/vim-dasht'
Plug 'liuchengxu/vim-which-key'
" Appearance

Plug 'thiagoalessio/rainbow_levels.vim'

" Formatters
Plug 'sbdchd/neoformat'

"Git plugins
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'
" Plug 'mhinz/vim-signify' "Good for other VCS other than GIT
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-rhubarb'
Plug 'lambdalisue/gina.vim'
"vim-rhubarb variables set in ~/.rhubarb_credentials

"HTML and CSS Plugins
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/tagalong.vim'

"Javascript Plugins
Plug 'jungomi/vim-mdnquery'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'samuelsimoes/vim-jsx-utils'
Plug 'alampros/vim-react-keywords'
Plug 'jparise/vim-graphql'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'ap/vim-css-color'
Plug 'mvolkmann/vim-react'
Plug 'mvolkmann/vim-js-arrow-function'
Plug 'PsychoLlama/further.vim'
Plug 'benjie/local-npm-bin.vim'
Plug 'Quramy/vim-js-pretty-template'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Reason
Plug 'reasonml-editor/vim-reason-plus'

"Java/Android/Gradle plugins
Plug 'hsanson/vim-android'
Plug 'npacker/vim-java-syntax-after'
Plug 'georgewfraser/java-language-server', { 'do': './scripts/link_mac.sh' }

" Kotlin
Plug 'donniewest/kotlin-vim'
Plug 'fwcd/kotlin-language-server', { 'do': './gradlew :server:installDist' }

" Ruby
Plug 'vim-ruby/vim-ruby'

"VIMScript Plugins
Plug 'machakann/vim-Verdin'

" Rust

Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

"Markdown/Octopress Plugins

Plug 'rhysd/vim-grammarous'
Plug 'junegunn/goyo.vim'
Plug 'jxnblk/vim-mdx-js'
Plug 'gabrielelana/vim-markdown'
" Plug 'junegunn/limelight.vim'
" Plug 'Juev/vim-jekyll'
" Plug 'tpope/vim-liquid'


" C Based plugins
Plug 'justinmk/vim-syntax-extra'

" C# Based Plugins
Plug 'OmniSharp/omnisharp-vim'
Plug 'nickspoons/vim-sharpenup'

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
set magic
set noshowmode
set completeopt=noinsert,menuone,noselect
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
set shortmess+=cI
set showcmd
set laststatus=2
set diffopt+=vertical
nnoremap ! :!
nnoremap ; :
set splitbelow
set splitright
set ttimeoutlen=50
set tags=.tags,./tags,tags;
set nofoldenable    " disable folding
set list listchars=tab:»·,trail:·,nbsp:·
set exrc
set secure
set termguicolors
set inccommand=split
set mouse=a

nnoremap <F2> :MundoToggle<CR>

augroup dirvish_config
  autocmd!
  autocmd FileType dirvish silent! unmap <buffer> <C-p>
  autocmd FileType dirvish silent! unmap <buffer> <C-n>
augroup END

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"Set IndentLines to disabled by default
let g:indentLine_enabled = 0

" Allow gitgutter on large files
let g:gitgutter_max_signs=10000
let g:magit_refresh_gitgutter=1
autocmd BufWritePost * :GitGutter
autocmd User ALELintPost :GitGutter
autocmd User VimagitLeaveCommit :GitGutterAll
autocmd User VimagitUpdateFile :GitGutterAll

let g:signify_vcs_list = [ 'git' ]

"Generic wildignores
set wildignore+=*/log/*,*/.git/*,**/*.pyc

nnoremap <leader><space> :call Strip_trailing_whitespace()<CR>
let g:neoformat_enabled_javascript = ['prettiereslint']
let g:neoformat_enabled_typescript = ['prettier']
nnoremap <leader>fm :Neoformat<CR>

let g:closetag_xhtml_filenames = '*.xhtml,*.js,*.tsx'

" This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

imap <C-x><C-o> <Plug>(asyncomplete_force_refresh)
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'whitelist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#Verdin#get_source_options({
    \ 'name': 'Verdin',
    \ 'whitelist': ['vim'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#Verdin#completor')
    \ }))

let g:javascript_tsserver_use_global = 1

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#ale#get_source_options({
    \ 'priority': 10,
    \ }))

let g:ale_completion_tsserver_autoimport = 1
let g:ale_rename_tsserver_find_in_comments = 1
let g:ale_rename_tsserver_find_in_comments = 1
let g:ale_completion_tsserver_remove_items_without_detail = 1
let g:ale_completion_symbols = {
\ 'keyword': 'keyword',
\ 'class': '',
\ 'interface': '',
\ 'script': 'script',
\ 'module': '',
\ 'local class': 'local class',
\ 'type': '',
\ 'enum': '',
\ 'enum member': '',
\ 'alias': '',
\ 'type parameter': 'type param',
\ 'primitive type': 'primitive type',
\ 'var': '',
\ 'local var': '',
\ 'property': '',
\ 'let': '',
\ 'const': '',
\ 'label': 'label',
\ 'parameter': 'param',
\ 'index': 'index',
\ 'function': '',
\ 'local function': 'local function',
\ 'method': '',
\ 'getter': '',
\ 'setter': '',
\ 'call': 'call',
\ 'constructor': '',
\ '<default>': 'v',
\ }

let g:javascript_tsserver_use_global = 1

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nnoremap <silent> gk :call Dasht([expand('<cword>'), expand('<cWORD>')])<Return>
let g:dasht_filetype_docsets = {} " filetype => list of docset name regexp
let g:dasht_filetype_docsets['javascript'] = ['React', 'React_Native', 'Sequelize']

set completefunc=autoprogramming#complete

" Use RipGrep instead of Grep
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

let g:rainbow_active = 1
let g:incsearch#auto_nohlsearch = 1
let g:asterisk#keeppos = 1
let g:ag_working_path_mode="r"
"Use unix clipboard
set clipboard+=unnamedplus

" Some default colorschemes I like
" colorscheme darkburn
colorscheme gotham
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext

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

"Ctrl + Left and Right switch buffers
nnoremap <silent> <C-Right> :bnext<CR>
nnoremap <silent> <C-Left> :bprevious<CR>
nnoremap <silent> <C-Del> :Sayonara<CR>

let g:startify_custom_header = []
let g:startify_change_to_vcs_root = 1

let g:qf_auto_open_loclist = 0

let g:esearch = {
  \ 'adapter':    'rg',
  \ 'backend':    'nvim',
  \ 'out':        'win',
  \ 'batch_size': 1000,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
let g:neosnippet#enable_completed_snippet = 1

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB> pumvisible() ? "\<C-n>" : (neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>") 
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

let g:neosnippet#snippets_directory='~/Code/react-snippets'
" Conceal neosnippet markers
set conceallevel=2
set concealcursor=niv

function! Fzf_dev()
  function! s:files()
    let files = split(system($FZF_DEFAULT_COMMAND), '\n')
    return s:prepend_icon(files)
  endfunction

  function! s:prepend_icon(candidates)
    let result = []
    for candidate in a:candidates
      let filename = fnamemodify(candidate, ':p:t')
      let icon = WebDevIconsGetFileTypeSymbol(filename, isdirectory(filename))
      call add(result, printf("%s %s", icon, candidate))
    endfor

    return result
  endfunction

  function! s:edit_file(item)
    let parts = split(a:item, ' ')
    let file_path = get(parts, 1, '')
    execute 'silent e' file_path
  endfunction

  call fzf#run({
        \ 'source': <sid>files(),
        \ 'sink':   function('s:edit_file'),
        \ 'options': '-m -x +s',
        \ 'down':    '40%' })
endfunction


command! FilesWithIcon :call Fzf_dev()

nnoremap <C-p> :FilesWithIcon<ENTER>
if has('nvim')
  aug fzf_setup
    au!
    au TermOpen term://*FZF tnoremap <silent> <buffer><nowait> <esc> <c-c>
  aug END
end


" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

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
autocmd FileType esearch nnoremap <buffer> <Leader>fr :ESubstitute/
autocmd FileType esearch xnoremap <buffer> <Leader>fr :ESubstitute/
call esearch#map('<leader>ff', 'esearch')
call esearch#map('<leader>fw', 'esearch-word-under-cursor')
hi ESearchMatch ctermfg=black ctermbg=white guifg=#000000 guibg=#E6E6FA

tnoremap <Esc> <C-\><C-n>

let g:highlightedyank_highlight_duration = 100

autocmd User Startified setlocal buftype=
let g:startify_bookmarks = [
            \ { 'c': '~/.config/nvim/init.vim' },
            \ ]

"Make TComment work as I expect
noremap <leader>/ :TComment <CR>
vmap <leader>/ :TCommentBlock<CR>

let g:tmux_navigator_no_mappings = 1


tnoremap <silent> <M-Left> <C-\><C-n>:TmuxNavigateLeft<cr>
tnoremap <silent> <M-Down> <C-\><C-n>:TmuxNavigateDown<cr>
tnoremap <silent> <M-Up> <C-\><C-n>:TmuxNavigateUp<cr>
tnoremap <silent> <M-Right> <C-\><C-n>:TmuxNavigateRight<cr>
" These mappings are used when nvim IS inside tmux
tnoremap <silent> <C-W>k    <C-\><C-n>:TmuxNavigateUp<CR>
tnoremap <silent> <C-W>j    <C-\><C-n>:TmuxNavigateDown<CR>
tnoremap <silent> <C-W>h    <C-\><C-n>:TmuxNavigateLeft<CR>
tnoremap <silent> <C-W>l    <C-\><C-n>:TmuxNavigateRight<CR>

nnoremap <silent> <M-Left> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <Alt-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <M-Up> :TmuxNavigateUp<cr>
nnoremap <silent> <M-Right> :TmuxNavigateRight<cr>
" These mappings are used when nvim IS inside tmux
nnoremap <silent> <C-W>k    :TmuxNavigateUp<CR>
nnoremap <silent> <C-W>j    :TmuxNavigateDown<CR>
nnoremap <silent> <C-W>h    :TmuxNavigateLeft<CR>
nnoremap <silent> <C-W>l    :TmuxNavigateRight<CR>

set showtabline=2

let g:sharpenup_statusline_opts = { 'Highlight': 0 }

let g:lightline = {
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'colorscheme': 'gotham256',
      \ 'tabline': {
      \   'left': [['buffers']],
      \   'right': [[ 'exit' ]],
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              ['gradle_project', 'gradle_running', 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok'],
      \              [ 'fileformat', 'fileencoding', 'filetype' ],
      \              ['sharpenup']
      \            ]
      \ },
      \ 'inactive': {
      \   'right': [['lineinfo'], ['percent'], ['sharpenup']]
      \ },
      \ 'component': {
      \   'sharpenup': sharpenup#statusline#Build()
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers',
      \   'linter_checking': 'lightline#ale#checking',
      \   'linter_warnings': 'lightline#ale#warnings',
      \   'linter_errors': 'lightline#ale#errors',
      \   'linter_ok': 'lightline#ale#ok',
      \   'gradle_errors': 'lightline#gradle#errors',
      \   'gradle_warnings': 'lightline#gradle#warnings',
      \   'gradle_running': 'lightline#gradle#running',
      \   'gradle_project': 'lightline#gradle#project'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel',
      \   'gradle_erros': 'error',
      \   'gradle_warnings': 'warning',
      \   'gradle_running': 'left',
      \   'gradle_project': 'right',
      \   'linter_checking': 'left',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \   'linter_ok': 'left'
      \ },
      \ }

let g:lightline#ale#indicator_checking = ''
let g:lightline#ale#indicator_warnings = ''
let g:lightline#ale#indicator_errors   = ''
let g:lightline#ale#indicator_ok       = ''
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#show_number  = 0
let g:lightline#bufferline#shorten_path = 1
" let g:lightline#bufferline#filename_modifier = ':t'

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

autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

autocmd CursorHold *.js,*.jsx :ALEHover

autocmd FileType javascript,javascript.jsx nnoremap <buffer> <C-]> :ALEGoToDefinition<CR>


autocmd CursorHold *.rs :call LanguageClient_textDocument_hover()<CR>
autocmd FileType rust nnoremap <buffer> <C-]> :call LanguageClient_textDocument_definition()<CR>
autocmd FileType rust nnoremap <buffer> <F6> :call LanguageClient_textDocument_rename()<CR>

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
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_ctags_executable_php = 'ctags --langmap=php:.engine.inc.module.theme.install.php --php-kinds=cdfi --fields=+l'

" HTML/CSS/Markdown/Octopress Stuff
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css,scss,sass setlocal iskeyword+=-

let g:vim_json_syntax_conceal = 0
" Python Stuff
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" Javascript Stuff
let g:jsx_ext_required = 0
let g:mustache_abbreviations = 1
autocmd BufNewFile,BufRead .eslintrc set ft=json

autocmd FileType javascript nnoremap <buffer> <F3> :TSImport<CR>
autocmd FileType javascript inoremap <buffer> <F3> :TSImport<CR>
autocmd FileType json setlocal conceallevel=0

" autocmd FileType javascript setlocal omnifunc=tsuquyomi#complete
autocmd FileType javascript nnoremap eir :call JSXEncloseReturn()<CR>
autocmd FileType javascript nnoremap oat :call JSXEachAttributeInLine()<CR>
autocmd FileType javascript nnoremap eat :call JSXExtractPartialPrompt()<CR>
autocmd FileType javascript nnoremap cat :call JSXChangeTagPrompt()<CR>
autocmd FileType javascript nnoremap vat :call JSXSelectTag()<CR>

" Register tag name associated the filetype
call jspretmpl#register_tag('gql', 'graphql')
call jspretmpl#register_tag('/* GraphQL */ ', 'graphql')
autocmd FileType javascript JsPreTmpl
autocmd FileType javascript.jsx JsPreTmpl

let g:ale_lint_on_enter = 1
let g:ale_virtualtext_cursor = 1
let g:ale_fixers = {'javascript': ['prettier_eslint']}
let g:ale_linters = {'javascript': ['eslint', 'tsserver'], 'cs': ['OmniSharp'], 'java': ['android', 'javalsp'], 'kotlin': ['android', 'ktlint', 'languageserver']}
let g:ale_fix_on_save = 1

" Fetch semantic type/interface/identifier names on BufEnter and highlight them
let g:OmniSharp_highlight_types = 1
let g:OmniSharp_server_stdio = 1

let g:sharpenup_create_mappings = 0

augroup lightline_integration
  autocmd!
  autocmd User OmniSharpStarted,OmniSharpReady,OmniSharpStopped call lightline#update()
augroup END

augroup omnisharp_commands
    autocmd!

    " When Syntastic is available but not ALE, automatic syntax check on events
    " (TextChanged requires Vim 7.4)
    " autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

    " Show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    " Update the highlighting whenever leaving insert mode
    autocmd InsertLeave *.cs call OmniSharp#HighlightBuffer()

    " Alternatively, use a mapping to refresh highlighting for the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>th :OmniSharpHighlightTypes<CR>

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> <C-]> :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    " autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>


    autocmd FileType cs " Rename with dialog
    autocmd FileType cs nnoremap <F2> :OmniSharpRename<CR>
    " Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
    autocmd FileType cs command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

    autocmd FileType cs nnoremap <Leader>fm :OmniSharpCodeFormat<CR>

    " Start the omnisharp server for the current solution
    autocmd FileType cs nnoremap <Leader>ss :OmniSharpStartServer<CR>
    autocmd FileType cs nnoremap <Leader>sp :OmniSharpStopServer<CR>



augroup END


" Git Stuff

" Automatically wrap at 72 characters and spell check git commit messages
autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitcommit setlocal spell
let g:grammarous#languagetool_cmd = 'languagetool'

"VIM Android/Java/Gradle stuff
let g:android_sdk_path = expand("$ANDROID_HOME")
let g:gradle_daemon=1
let g:gradle_show_signs=0
let g:gradle_loclist_show=0
let g:gradle_sync_on_load=1

let g:gradle_glyph_error=''
let g:gradle_glyph_warning=''
let g:gradle_glyph_gradle=''
let g:gradle_glyph_android=''
let g:gradle_glyph_building=''

augroup GradleGroup
  autocmd!
  au BufWrite build.gradle call gradle#sync()
augroup END

"XML completion based on CTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

autocmd FileType kotlin nnoremap <buffer> <C-]> LspDefinition<CR>
let g:ale_kotlin_languageserver_executable = '~/.config/nvim/plugged/KotlinLanguageServer/server/build/install/server/bin/kotlin-language-server '

let g:ale_java_javalsp_executable = '~/.config/nvim/plugged/java-language-server/dist/mac/bin/launcher'

let g:neoformat_java_googleformatter = {
            \ 'exe': 'google-java-format',
            \ 'args': ['-'],
            \ 'stdin': 1,
            \ }

let g:neoformat_enabled_java = ['googleformatter']

let g:neoformat_kotlin_ktlint = {
            \ 'exe': 'ktlint',
            \ 'args': ['-F', '-a', '--stdin'],
            \ 'stdin': 1,
            \ }

let java_highlight_functions = 'style'
let java_highlight_all = 1
let java_highlight_debug = 1

" Ruby
let g:rubycomplete_rails = 1
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1


highlight htmlArg cterm=italic
highlight Comment cterm=italic
highlight Type    cterm=italic
highlight Keywords cterm=italic
highlight xmlAttrib cterm=italic ctermfg=214
highlight jsxAttrib cterm=italic
highlight Statement cterm=italic
highlight Keyword cterm=italic
highlight Constant cterm=italic
highlight Boolean cterm=italic

highlight htmlArg gui=italic
highlight Comment gui=italic
highlight Type    gui=italic
highlight Keywords gui=italic
highlight xmlAttrib gui=italic ctermfg=214
highlight jsxAttrib gui=italic
highlight Statement gui=italic
highlight Keyword gui=italic
highlight Constant gui=italic
highlight Boolean gui=italic

let g:rainbow_levels = [
    \{'ctermbg': 232, 'guibg': '#080808'},
    \{'ctermbg': 233, 'guibg': '#121212'},
    \{'ctermbg': 234, 'guibg': '#1c1c1c'},
    \{'ctermbg': 235, 'guibg': '#262626'},
    \{'ctermbg': 236, 'guibg': '#303030'},
    \{'ctermbg': 237, 'guibg': '#3a3a3a'},
    \{'ctermbg': 238, 'guibg': '#444444'},
    \{'ctermbg': 239, 'guibg': '#4e4e4e'},
    \{'ctermbg': 240, 'guibg': '#585858'}]


" vim-visual-multi configuration
let g:VM_default_mappings           = 1
let g:VM_sublime_mappings           = 0
let g:VM_mouse_mappings             = 1
let g:VM_extended_mappings          = 0
let g:VM_no_meta_mappings           = 0
let g:VM_reselect_first_insert      = 0
let g:VM_reselect_first_always      = 0
let g:VM_case_setting               = "smart"
let g:VM_pick_first_after_n_cursors = 0
let g:VM_dynamic_synmaxcol          = 20
let g:VM_disable_syntax_in_imode    = 0
let g:VM_exit_on_1_cursor_left      = 0
let g:VM_manual_infoline            = 0

" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')

" for asyncomplete.vim log
" let g:asyncomplete_log_file = expand('~/asyncomplete.log')
