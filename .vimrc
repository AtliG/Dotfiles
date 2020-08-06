" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive' " Git plugin

Plugin 'tpope/vim-surround' " Not sure - check this out better

Plugin 'scrooloose/nerdtree' " Directory navigation tree in vim

Plugin 'scrooloose/nerdcommenter' " Comments made easy

Plugin 'scrooloose/syntastic'

Plugin 'valloric/youcompleteme'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'flazz/vim-colorschemes'

Plugin 'tpope/vim-endwise'

Plugin 'pangloss/vim-javascript'

Plugin 'leafgarland/typescript-vim'

Plugin 'peitalin/vim-jsx-typescript'

Plugin 'MaxMEllon/vim-jsx-pretty'

Plugin 'yggdroot/indentline'

Plugin 'morhetz/gruvbox'

Plugin 'w0rp/ale'

Plugin 'ryanoasis/vim-devicons'

Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

Plugin 'junegunn/fzf', { 'do': { -> fzf#instal() } }


call vundle#end()

" Attempt to determine the type of a file based on its name and possibly its
" " contents. Use this to allow intelligent auto-indenting for each filetype,
" " and for plugins that are filetype specific.
filetype indent plugin on

syntax on
syntax enable

set background=dark
let g:gruvbox_contrast_dark = 'hard'
" let g:solarized_termcolors=256
" set t_Co=16
colorscheme gruvbox 

set encoding=UTF-8


"-----------------------------------------------------------------------------
" Syntastic plugin settings
"
let g:statline_syntastic = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" let g:syntastic_typescript_checkers = ['tsc', 'tslint']
" let g:syntastic_typesscript_tsc_fname = ''

"-----------------------------------------------------------------------------
" Airline plugin settings
"
" let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" if !exists('g:airline_symbols')
  " let g:airline_symbols = {}
" endif
" let g:airline_left_sep = '>'
" let g:airline_right_sep = '<'
" let g:airline_symbols.liner = " "
" let g:airline_symbols.whitespace= " "
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tabline#formatter = 'default'

" Airline themes
let g:airline_theme='gruvbox'

"-----------------------------------------------------------------------------
" NERDTree plugin settings
"
"autocmd vimenter * NERDTree

map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


"----------------------------------------------------------------------------
" NERDCommenter plugin settings
"
" Spaces after coment delimiter by default
let g:NERDSpaceDelims = 1

" Compact syntax for prettier multi-line comments
let g:NERDCompactSexyComs = 1

" Comment emtpy lines
let g:NERDCommentEmptyLines = 1

" Trim trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Show hidden files in nerdtree
let g:NERDTreeShowHidden = 0

"----------------------------------------------------------------------------
" ALE plugin settings
"

" Enable Prettier fixer for specified languages
let g:ale_fixers = {
      \   'javascript': ['prettier'],
      \   'typescript': ['prettier'],
      \   'css': ['prettier'],
      \}

" Tell ALE to only run explicitly configured linters
let g:ale_linters_explicit = 1

" Have ALE run Prettier on save
let g:ale_fix_on_save = 1


"--------------------------------------------------
" Vim with default settings does not allow easy switching between multiple
" files
" in the same editor window. Users can use multiple split windows or multiple
" " tab pages to edit multiple files, but it is still best to enable an option
" to
" " allow easier switching between files.
" "
" " One such option is the 'hidden' option, which allows you to re-use the
" same
" " window and switch from an unsaved buffer without saving it first. Also
" allows
" " you to keep an undo history for multiple files when re-using the same
" window
" " in this way. Note that using persistent undo also lets you undo in
" multiple
" " files even in the same window, but is less efficient and is actually
" designed
" " for keeping undo history after closing Vim entirely. Vim will complain if
" you
" " try to quit without saving, and swap files will keep you safe if your
" computer
" " crashes.
set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last ine of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" " mapping of <C-L> below)
set hlsearch

"------------------------------------------------------
" Case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" " the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" " While this behaviour deviates from that of Vi, it does what most users
" " coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" " line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" " this line is also included, vim will neither flash nor beep. If visualbell
" " is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

"--------------------------------------------------------------------------------
"
" Indentation settings for using 4 spaces instead of tabs.
" " Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set smarttab
set softtabstop=0 noexpandtab

"--------------------------------------------------------------------------------
" mappings
"
"
map Y y$

nnoremap <C-L> :nohl<CR><C-L>

map <leader>o :%bd\|e#\|bd#<cr>

map <leader>s :w<cr>

