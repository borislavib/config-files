set nomodeline
"" reaload vimrc without restart
" https://superuser.com/questions/132029/how-do-you-reload-your-vimrc-file-without-restarting-vim
" so %  - editing it currently, reload  
"
" default for Win8
" source VIMRUNTIME/mswin.vim
" behave mswin
"
" set diffexpr=MyDiff()
" function MyDiff() see link
" https://superuser.com/questions/697847/cant-run-vimdiff-7-4-on-windows-7
"
" Shortcuts used
"
" Move screen without moving the cursor
" https://stackoverflow.com/questions/3458689/how-to-move-screen-without-moving-cursor-in-vim
" C e down
" C y up
"
" Show all search results, Location lists
" https://stackoverflow.com/a/21000896/1770460
" :lvim foo %  to search for foo in the current file and enter all matches containing foo into the location list.
" :lopen


" Ref :
" https://dougblack.io/words/a-good-vimrc.html 

" required
set nocompatible 	
" for windows 
" set guifont=Consolas:h16
" for ubuntu 
set gfn=Ubuntu\ Mono\ 17

" line numbers on startup
set number

" show end of lines as $
" set list

"set backup
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set backupskip=/tmp/*,/private/tmp/*
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set writebackup

" syntax highlight
syntax enable

" http://vim.wikia.com/wiki/Folding
" https://stackoverflow.com/questions/357785/what-is-the-recommended-way-to-use-vim-folding-for-python-code
set foldenable

" set foldmethod=indent
set foldmethod=manual

" set foldmethod=marker
set foldnestmax=2 

" fold with space 
nnoremap <space> za
vnoremap <space> zf

" open most folds by default
set foldlevelstart=10  

" Remove highlight, no 
" nnoremap <esc> :noh<return><esc>
" see more on
" https://stackoverflow.com/questions/11940801/mapping-esc-in-vimrc-causes-bizzare-arrow-behaviour

" When editing a text file, if you want word wrapping, 
" but only want line breaks inserted when you explicitly press the Enter key:
set wrap
set linebreak
set nolist
set textwidth=80

" http://vim.wikia.com/wiki/Disable_beeping
" set noerrorbells visualbell t_vb=
" autocmd GUIEnter * set visualbell t_vb=

" https://stackoverflow.com/questions/15660669/what-is-a-un-file-or-or-why-does-vim-in-the-terminal-make-the-un-file
set noundofile

" https://stackoverflow.com/questions/16507777/vim-set-encoding-and-fileencoding-utf-8
set encoding=utf-8

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" number of spaces in tab when editing
set softtabstop=4   

" show command in bottom bar
set showcmd

" highlight current line
set cursorline

" visual autocomplete for command menu
" automatically autocompletes i.e. :e ~/.vim<TAB>
set wildmenu

" highlight matching [{()}]
set showmatch           

" search as characters are entered
set incsearch

" highlight matches
set hlsearch  

" turn off search highlight
" nnoremap <leader><space> :nohlsearch<CR>

" select and copy manually with the mouse
set mouse=a

" paste from clipboard to python file, without spoiling the identation
" https://stackoverflow.com/questions/22966531/bad-indentation-when-pasting-into-vim
" set paste     
" set nopaste

" WQ to save and exit 
" https://stackoverflow.com/questions/117150/can-i-remap-ex-commands-in-vim
command WQ wq
command Wq wq
command W w
command Q q

" history of commands long
" https://www.vim.org/ugrankar.pdf
set history=1000
set undolevels=1000

" status line more info 
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=\%F\ [%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ \ %H:%M\")}
set laststatus=2
" %f\ %l,%c

" remove bars 
" https://vim.fandom.com/wiki/Hide_toolbar_or_menus_to_see_more_text
" remove menu bar
" set guioptions-=m 

" remove toolbar
set guioptions-=T  

"remove right-hand scroll bar
set guioptions-=r

"remove left-hand scroll bar
set guioptions-=L  

" location list for search
" https://stackoverflow.com/questions/509690/how-can-you-list-the-matches-of-vims-search
" lvim foo %
" lopen 

" Tab completion just like in the shell
" https://gist.github.com/ArupSen/3812130
set wildmode=longest,list

" vim startup errors - from windows to unix 
" mark all and copy it into linux and reload 
" https://stackoverflow.com/questions/21902754/vim-startup-errors-invalid-expression-debian

" mark the whole word under the cursor
map <F2> <esc>viw

" F3: Toggle list (display unprintable characters).
" https://stackoverflow.com/questions/12534313/vim-set-list-as-a-toggle-in-vimrc
nnoremap <F3> :set list!<CR>

" insert time 
" https://vim.fandom.com/wiki/Insert_current_date_or_time
" nnoremap <F5> "=strftime('%Y-%m-%d')<CR>P

" copy text to system clipboard 
" https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
" https://vi.stackexchange.com/questions/9992/paste-clipboard-shortcut-in-vimrc
" :noremap <F2> "+p
map <F5> "+y

" like emacs 
nnoremap <F4> :w<CR>
" F5 for :q ? 

" Switch case with <F9> when searching 
nmap <F9> :set ignorecase! ignorecase?

" Use <F11> to toggle between 'paste' and 'nopaste' for python ? 
" https://vim.fandom.com/wiki/Example_vimrc 
" set pastetoggle=<F11>

" https://vi.stackexchange.com/questions/4919/exit-from-terminal-mode-in-neovim
tnoremap <ESC> <C-w>:q!<CR>

" C-w arrow for moving to another buffer 
" shortcuts should be here, easier to check
