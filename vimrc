" Load plugins from .vim/bundles using .vim/autoload/pathogen.vim
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype off " On some Linux systems, this is necessary to make sure pathogen
             " picks up ftdetect directories in plugins! :(
syntax on
filetype plugin indent on


set nocompatible
set backspace=indent,eol,start
set history=1000
set scrolloff=3     " keep 3 lines when scrolling

set viminfo=!,'100,\"100,:20,<50,s10,h,n~/.viminfo

set showcmd         " display incomplete commands
set showmode

set hlsearch        " highlight searches
set incsearch

set softtabstop=4
set tabstop=4
set shiftwidth=4

set foldmethod=indent
set nofoldenable

set hidden

set ruler
set laststatus=2
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set vb
set nobackup        " do not keep a backup file
set noswapfile
set number          " show line numbers
set numberwidth=4   " line numbering takes up 5 spaces
set ignorecase      " ignore case when searching
set nowrap          " stop lines from wrapping
set noignorecase   " don't ignore case
" set notitle         " don't show "Thanks for flying vim"
set ttyfast         " smoother changes
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
set bs=2            " Backspace can delete previous characters
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set undolevels=200
"set cpoptions=$cF
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.DS_Store,*.db
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]  
" filetype plugin indent on " turn on the indent plugins

set noautoindent    " turn off by default, enable for specific filetypes
set nosmartindent   " turn off by default, enable for specific filetypes
set nocindent       " turn off by default, enable for specific filetypes

" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1

" VCS Command Configs
let mapleader = ","
map <leader>td <Plug>TaskList
map <unique> <silent> <Leader>tg :call MakeGreen()<cr>
" Syntax for multiple tag files are
" set tags=/my/dir1/tags, /my/dir2/tags
set tags=tags;$HOME/.vim/tags/ "recursively searches directory for 'tags' file

" TagList Plugin Configuration
let Tlist_Ctags_Cmd='/usr/local/bin/ctags' " point taglist to ctags
let Tlist_GainFocus_On_ToggleOpen = 1      " Focus on the taglist when its toggled
let Tlist_Close_On_Select = 1              " Close when something's selected
let Tlist_Use_Right_Window = 1             " Project uses the left window
let Tlist_File_Fold_Auto_Close = 1         " Close folds for inactive files

" SCMDiff Plugin Configuration
let SCMDiffCommand = 'git'

syntax on
set expandtab
set sm
set smarttab
if has("gui_running")
    " See ~/.gvimrc
    set guifont=DejaVu\ Sans\ Mono:h14.00  " use this font
    " set lines=50          " height = 50 lines
    " set columns=120       " width = 100 columns
    set background=dark   " adapt colors for background
    " set transparency=5    " Barely transparent
    set guioptions-=T
    set list 
    set listchars=tab:▷⋅,trail:⋅,nbsp:⋅ " mark trailing white space
    autocmd filetype html,xml set listchars-=tab:▷⋅.
    "colorscheme blackboard
    colorscheme jellybeans
    " colorscheme vividchalk
else
    colorscheme vibrantink   " use this color scheme
    set guifont=DejaVu\ Sans\ Mono:h14.00  " use this font
    set background=dark   " adapt colors for background
endif

" colorscheme scratch
" set bg=dark
if has("gui_running")
    set cursorline
endif
if has("autocmd")
    " Restore cursor position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    " Filetypes (au = autocmd)
    au FileType helpfile set nonumber      " no line numbers when viewing help
    au FileType helpfile nnoremap <buffer><cr> <c-]>   " Enter selects subject
    au FileType helpfile nnoremap <buffer><bs> <c-T>   " Backspace to go back
    
    " When using mutt, text width=72
    au FileType mail,tex set textwidth=72
    au FileType cpp,c,java,sh,pl,php,py,asp  set autoindent
    au FileType cpp,c,java,sh,pl,php,py,asp  set smartindent
    au FileType cpp,c,java,sh,pl,php,py,asp  set cindent
    au FileType py set foldmethod=indent
    au FileType py set textwidth=79  " PEP-8 friendly
    au FileType py inoremap # X#
    au FileType py set expandtab
    au FileType py set omnifunc=pythoncomplete#Complete
    autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
    autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
    "au BufRead mutt*[0-9] set tw=72
    
    " Automatically chmod +x Shell scripts
    au BufWritePost   *.sh             !chmod +x %

    " File formats
    au BufNewFile,BufRead  *.pls    set syntax=dosini
    au BufNewFile,BufRead  modprobe.conf    set syntax=modconf
    
    " == SQL Settings ==
    autocmd FileType sql set shiftwidth=2
    autocmd FileType sql set softtabstop=2
    autocmd FileType sql set tabstop=2
    
    " == Python Settings ==
    " Don't wrap at textwidth
    " autocmd FileType python set formatoptions-=t
    " Force unix line-endings
    " autocmd FileType python set ff=unix
    " Uncomment to use pylint on save
    " autocmd FileType python compiler pylint

endif



" CTRL+S to browse for a new file in a split,
" CTRL+X to do the same vertically
map  :Sexplore<CR>
map  :Vexplore<CR>
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>


" Show me where I'm exceeding 80 chars on a line
:match ErrorMsg '\%>80v.\+'


" When auto-completing items, 2nd tab shows a list when multiple matches
set wildmode=longest,list
set wildignore+=*.pyc,*.zip,*.gz,*.bz,*.tar,*.jpg,*.png,*.gif


" Keyboard mappings
map <F1> :previous<CR>  " map F1 to open previous buffer
map <F2> :next<CR>      " map F2 to open next buffer
" map <F3> :NERDTreeToggle<CR>" map F3 to open NERDTree
map ` :NERDTreeToggle<CR>" map F3 to open NERDTree
" map <F7> :TlistToggle<CR> " map F7 to toggle the Tag Listing
map <silent> <C-N> :silent noh<CR> " turn off highlighted search
map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file
" map ,p :Lodgeit<CR>         " pastes selection / file to paste.pocoo.org
map <leader>ft :%s/	/    /g<CR> " replace all tabs with 4 spaces
" map ,d :call <SID>SCMDiff()<CR>
" map <S-T> :FufFile<CR>
" map <C-T> :FufLine<CR>

" Viewport Controls
" ie moving between split panes
map <silent>,h <C-w>h 
" map <silent>,j <C-w>j
map <silent>,k <C-w>k
map <silent>,l <C-w>l

map <silent><C-left> <C-T>  " step out of a python function
map <silent><C-right> <C-]> " follow a python function

nnoremap <leader><space> :nohlsearch<cr>

" nnoremap <tab> %
" vnoremap <tab> %

nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a <Esc>:Ack!
nnoremap <leader>f <Esc>:LAck!
nnoremap <silent> <leader>b :TagbarToggle<CR>

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>


let g:pep8_map='<leader>8'
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

set enc=utf-8
set fileformats=unix,dos,mac

" set noerrorbells
" set vb t_vb=
" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

