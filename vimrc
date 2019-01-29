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
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'mg979/vim-visual-multi', {'branch': 'test'}

Plug 'wakatime/vim-wakatime'

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-github'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ncm2/ncm2-vim-lsp'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'tpope/vim-db'

Plug 'Shougo/context_filetype.vim'
Plug 'kassio/neoterm'
Plug 'ludovicchabant/vim-gutentags'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'
Plug 'w0rp/ale'
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
"vim-rhubarb variables set in ~/.rhubarb_credentials

"HTML and CSS Plugins
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'

"Javascript Plugins
Plug 'jungomi/vim-mdnquery'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'samuelsimoes/vim-jsx-utils'
Plug 'alampros/vim-react-keywords'
Plug 'mhartington/nvim-typescript', { 'branch': 'master', 'do': './install.sh' }
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
" Plug 'artur-shaik/vim-javacomplete2', { 'branch': 'master' }
" Plug 'DonnieWest/VimStudio'
Plug '~/Code/vim-javacomplete2'
Plug '~/Code/VimStudio'
Plug 'hsanson/vim-android'
Plug 'npacker/vim-java-syntax-after'

" Kotlin
Plug 'donniewest/kotlin-vim'

" Ruby
Plug 'vim-ruby/vim-ruby'

"VIMScript Plugins
Plug 'Shougo/neco-vim'

" Rust

Plug 'rust-lang/rust.vim', { 'do': 'cargo install racer && rustup component add rust-src' }
Plug 'racer-rust/vim-racer'
Plug 'roxma/nvim-cm-racer'

" Dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'reisub0/hot-reload.vim'

"Markdown/Octopress Plugins

Plug 'rhysd/vim-grammarous'
Plug 'junegunn/goyo.vim'
Plug 'jxnblk/vim-mdx-js'
Plug 'gabrielelana/vim-markdown'
" Plug 'junegunn/limelight.vim'
" Plug 'Juev/vim-jekyll'
" Plug 'tpope/vim-liquid'


" C Based plugins
Plug 'ncm2/ncm2-pyclang'
Plug 'justinmk/vim-syntax-extra'

" PHP based plugins
Plug 'felixfbecker/php-language-server', {'do': 'composer install && composer run-script parse-stubs'}

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    !cargo build --release
    UpdateRemotePlugins
  endif
endfunction


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

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"Set IndentLines to disabled by default
let g:indentLine_enabled = 0

" Allow gitgutter on large files
let g:gitgutter_max_signs=10000
autocmd BufWritePost * :GitGutter

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

imap <C-x><C-o> <Plug>(ncm2_manual_trigger)

let g:lsp_signs_error = {'text': 'X'}
let g:lsp_signs_warning = {'text': '?' }
let g:lsp_signs_hint = {'text': '!'}
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

if executable('dart_language_server')
  au User lsp_setup call lsp#register_server({
      \ 'name': 'dartLanguageServer',
      \ 'cmd': {server_info->['dart_language_server']},
      \ 'whitelist': ['dart'],
      \ })
endif


au User lsp_setup call lsp#register_server({
     \ 'name': 'php-language-server',
     \ 'cmd': {server_info->['php', expand('~/.config/nvim/plugged/php-language-server/bin/php-language-server.php')]},
     \ 'whitelist': ['php'],
     \ })

au User lsp_setup call lsp#register_server({
    \ 'name': 'kotlinLanguageServer',
    \ 'cmd': {server_info->['/home/igneo676/Code/kotlin-language-server/build/install/kotlin-language-server/bin/kotlin-language-server']},
    \ 'whitelist': ['kotlin'],
    \ })

au User lsp_setup call lsp#register_server({
    \ 'name': 'javaLanguageServer',
    \ 'cmd': {server_info->['java -cp /home/igneo676/bin/vscode-javac.jar -Xverify:none -Xdebug org.javacs.Main']},
    \ 'whitelist': ['java'],
    \ })

if executable('bash-language-server')
  au User lsp_setup call lsp#register_server({
      \ 'name': 'bashLanguageServer',
      \ 'cmd': {server_info->['bash-language-server']},
      \ 'whitelist': ['bash'],
      \ })
endif

if executable('vscode-json-languageserver')
  au User lsp_setup call lsp#register_server({
      \ 'name': 'JsonLanguageServer',
      \ 'cmd': {server_info->['vscode-json-languageserver']},
      \ 'whitelist': ['json'],
      \ })
endif

if executable('ocaml-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'ocaml-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'ocaml-language-server --stdio']},
        \ 'whitelist': ['reason', 'ocaml'],
        \ })
endif

if executable('vscode-json-languageserver')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'vscode-json-languageserver',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'vscode-json-languageserver --stdio']},
        \ 'whitelist': ['json'],
        \ 'workspace_config': {
        \   'json': {
        \     'format': { 'enable': v:true },
        \     'schemas': {
        \       'fileMatch': ['package.json'],
        \       'url': 'http://json.schemastore.org/package',
        \       'schema': { 'type': 'array' }
        \     }
        \   }
        \ }
        \ })
endif

if executable('docker-langserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'docker-langserver',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'docker-langserver --stdio']},
        \ 'whitelist': ['dockerfile'],
        \ })
endif

if executable('html-languageserver')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'html-languageserver',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'html-languageserver --stdio']},
        \ 'whitelist': ['html'],
        \ })
endif

if executable('css-languageserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'css-languageserver',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
        \ 'whitelist': ['css', 'less', 'sass'],
        \ })
endif

if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

if executable('html-languageserver')
  au User lsp_setup call lsp#register_server({
      \ 'name': 'HTMLLanguageServer',
      \ 'cmd': {server_info->['html-languageserver --stdio']},
      \ 'whitelist': ['html'],
      \ })
endif

let g:ncm2#matcher = 'substrfuzzy'
autocmd BufEnter * call ncm2#enable_for_buffer()
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
colorscheme gotham256
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

let g:fugitive_gitlab_domains = ['http://gitlab.intomni.com', 'http://gitlab.codekoalas.com']

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

"Some nice mappings for ag
" inoremap <expr> <plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')


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

let g:highlightedyank_highlight_duration = 100

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
" These mappings are used when nvim IS inside tmux
nnoremap <silent> <C-W>k    :TmuxNavigateUp<CR>
nnoremap <silent> <C-W>j    :TmuxNavigateDown<CR>
nnoremap <silent> <C-W>h    :TmuxNavigateLeft<CR>
nnoremap <silent> <C-W>l    :TmuxNavigateRight<CR>

set showtabline=2

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
      \             [ 'gitbranch', 'readonly', 'filename', 'modified'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers',
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ }
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


autocmd CursorHold *.rs :call LanguageClient_textDocument_hover()<CR>
autocmd FileType rust nnoremap <buffer> <C-]> :call LanguageClient_textDocument_definition()<CR>
autocmd FileType rust nnoremap <buffer> <F6> :call LanguageClient_textDocument_rename()<CR>

let g:neoformat_typescript_prettiereslint = {
        \ 'exe': 'prettier-eslint',
        \ 'args': ['--stdin', '--stdin-filepath', '%:p'],
        \ 'stdin': 1,
        \ }
let g:neoformat_enabled_typescript = ['prettiereslint']

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

" Dart stuff
let dart_html_in_string=v:true
let dart_style_guide = 2
let dart_format_on_save = 1

" Javascript Stuff
let g:jsx_ext_required = 0
let g:mustache_abbreviations = 1
autocmd BufNewFile,BufRead .eslintrc set ft=json

let g:nvim_typescript#type_info_on_hold = 1
let g:nvim_typescript#signature_complete = 1
let g:nvim_typescript#javascript_support = 1
let g:nvim_typescript#max_completion_detail = 200
let g:nvim_typescript#diagnostics_enable = 0

autocmd FileType javascript nnoremap <buffer> <F3> :TSImport<CR>
autocmd FileType javascript inoremap <buffer> <F3> :TSImport<CR>
autocmd FileType json setlocal conceallevel=0

let g:nvim_typescript#kind_symbols = {
    \ 'keyword': 'keyword',
    \ 'class': '',
    \ 'interface': 'interface',
    \ 'script': 'script',
    \ 'module': '',
    \ 'local class': 'local class',
    \ 'type': 'type',
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
\}

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


" Git Stuff

" Automatically wrap at 72 characters and spell check git commit messages
autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitcommit setlocal spell
let g:grammarous#languagetool_cmd = 'languagetool'

"VIM Android/Java/Gradle stuff

"XML completion based on CTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java nnoremap <buffer> <F3> <Plug>(JavaComplete-Imports-Add)
autocmd FileType java inoremap <buffer> <F3> <Plug>(JavaComplete-Imports-Add)
autocmd FileType java nnoremap <buffer> <F4> <Plug>(JavaComplete-Imports-AddMissing)
autocmd FileType java inoremap <buffer> <F4> <Plug>(JavaComplete-Imports-AddMissing)
autocmd FileType java nnoremap <buffer> <F5> <Plug>(JavaComplete-Imports-RemoveUnused)
autocmd FileType java inoremap <buffer> <F5> <Plug>(JavaComplete-Imports-RemoveUnused)

au User Ncm2Plugin call ncm2#register_source({
        \ 'name' : 'JC',
        \ 'priority': 9, 
        \ 'subscope_enable': 1,
        \ 'scope': ['java'],
        \ 'mark': 'JC',
        \ 'complete_pattern':['\.', '::'], 
        \ 'on_complete': ['ncm2#on_complete#omni', 'javacomplete#Complete'],
        \ })



autocmd FileType kotlin nnoremap <buffer> <C-]> LspDefinition<CR>

let g:JavaComplete_ImportSortType = 'packageName'
let g:JavaComplete_ImportOrder = ['android.', 'com.', 'junit.', 'net.', 'org.', 'java.', 'javax.']
let g:JavaComplete_ImportOrder = ['*']
let g:JavaComplete_StaticImportsAtTop = 1
" let g:JavaComplete_CompletionResultSort = 1

autocmd CursorHold *.java :JCGetSymbolType

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

source ~/.rhubarb_credentials

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
