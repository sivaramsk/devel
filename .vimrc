" Note: Skip initialization for vim-tiny or vim-small or With Vim-Starting.
	if !1 | finish | endif
    	if has('vim_starting')
            set nocompatible  " Be iMproved
        endif

" Setup RTP:
	let s:vimfiles = ""
        let s:vimfiles = "~/.vim/"
    	let &runtimepath .= ',' . expand(s:vimfiles . "bundle/neobundle.vim/")

" Let NeoBundle Manage NeoBundle:
	call neobundle#begin(expand(s:vimfiles . "bundle/"))
		NeoBundle 'scrooloose/nerdtree'
		NeoBundle 'fatih/vim-go'

		NeoBundle 'Xuyuanp/nerdtree-git-plugin'
     	call neobundle#end()    " End Bundle Installation

filetype plugin indent on
syntax on

call pathogen#infect()
set number  
let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1
let g:neocomplete#enable_at_startup = 1

let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ]
\ }

let g:tagbar_autoclose = 1

" NerdTree git plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


nmap <C-v> :TagbarToggle<CR>
" NerdTree enable
map <C-n> :NERDTreeToggle<CR>




