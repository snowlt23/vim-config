" setting

"�ړ��L�[
nmap t j 
vmap t j
nmap n l 
vmap n l

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
