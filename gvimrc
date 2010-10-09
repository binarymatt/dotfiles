" Start with quite a large window
set columns=84
set lines=40
set number

" Jump to the last edited line on open
autocmd BufRead *,.* :normal '"

" F2 for fullscreen, F3 back to normal
set fuoptions=maxvert,maxhorz
map <F2> :set fullscreen<CR>
map <F3> :set nofullscreen<CR>

" ` for NERDTree
map ` <Esc>:NERDTreeToggle<CR>

" fuzzy finder mappings

" GUI options
set guioptions-=T
set guioptions-=L
set guioptions-=R
set guioptions-=l
set guioptions-=r


