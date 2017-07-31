" setting
nmap - $
nmap s ^

command! Cmacro :r! type C:\Users\yudai\cppmacro.txt 

:source $VIMRUNTIME/mswin.vim
 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " NeoBundle �ݒ�
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: neobundle �̐ݒ��.gvimrc�ɏ����Ȃ����ƁI

 " �����ɒǉ��������v���O�C����ǉ����܂��B 
NeoBundle 'https://github.com/Shougo/neocomplcache.git'
NeoBundle 'https://github.com/Shougo/unite.vim.git'
NeoBundle 'https://github.com/Shougo/vimshell.git'
NeoBundle 'Shougo/neocomplete.vim'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

"" neocomplcache
NeoBundle 'Shougo/neocomplcache'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

"�ړ��L�[
nmap t j
vmap t j
nmap n l
vmap n l

"undofile������
set noundofile

"�����R�[�h��UFT-8�ɐݒ�
set fenc=utf-8

" �o�b�N�A�b�v�t�@�C�������Ȃ�
set nobackup

" �X���b�v�t�@�C�������Ȃ�
set noswapfile

" �ҏW���̃t�@�C�����ύX���ꂽ�玩���œǂݒ���
set autoread

" �o�b�t�@���ҏW���ł����̑��̃t�@�C�����J����悤��
set hidden

" ���͒��̃R�}���h���X�e�[�^�X�ɕ\������
set showcmd

" �����ڌn
" �s�ԍ���\��
"
set number
" �s����1������܂ŃJ�[�\�����ړ��ł���悤��
"
set virtualedit=onemore
" �C���f���g�̓X�}�[�g�C���f���g
"
set smartindent
" �r�[�v��������
"
set visualbell
" ���ʓ��͎��̑Ή����銇�ʂ�\��
"
set showmatch
" �X�e�[�^�X���C������ɕ\��
"
set laststatus=2
" �R�}���h���C���̕⊮
"
set wildmode=list:longest
" �܂�Ԃ����ɕ\���s�P�ʂł̈ړ��ł���悤�ɂ���
"
nnoremap j gj
nnoremap k gk


" Tab�n
" �s������������(�^�u���u?-�v�ƕ\�������)
set list listchars=tab:\?\-
" Tab�����𔼊p�X�y�[�X�ɂ���
set expandtab
" �s���ȊO��Tab�����̕\�����i�X�y�[�X�������j
set tabstop=2
" �s���ł�Tab�����̕\����
set shiftwidth=2


" �����n
" ���������񂪏������̏ꍇ�͑啶������������ʂȂ���������
set ignorecase
" ����������ɑ啶�����܂܂�Ă���ꍇ�͋�ʂ��Č�������
set smartcase
" ������������͎��ɏ����Ώە�����Ƀq�b�g������
set incsearch
" �������ɍŌ�܂ōs������ŏ��ɖ߂�
set wrapscan
" ��������n�C���C�g�\��
set hlsearch
" ESC�A�łŃn�C���C�g����
nmap <Esc><Esc> :nohlsearch<CR><Esc>
