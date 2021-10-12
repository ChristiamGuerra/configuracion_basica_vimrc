" DIRECCION DEL ARCHIVO vimrc
" ' /home/christiam/.vimrc
"==============================================
" Permite colocar números al lado izquierdo dentro del exitor
set number
" Permite interactuar con el mouse dentro de vim
set mouse=a
" Ancho de los números
set numberwidth=1
" Permite usar el clipboard dentro de vim
set clipboard=unnamed
" Habilita la sintaxis dentro de vim
syntax enable
" Muestra comandos que se estan ejecutando
set showcmd
" Muestra la posición
set ruler
" Codificación de archivos
set encoding=utf-8
" Al posicionar en un parentecis resalta el de cierre
set showmatch
" Utiliza el tab con 2 espacios
set sw=2
" Muestra números relativos dependiendo de nuestra posición
set relativenumber
" Barra de estado siempre será visible
set laststatus=2
" Deja de mostrar el texto de INSERTAR
set noshowmode

" ===========================================

" DIRECCIÓN DE LOS PLUGINS

call plug#begin('/home/christiam/.config/nvim/plugged')

" TEMAS
Plug 'morhetz/gruvbox'

" IDE
" Permite navegar o realizar saltos entre nuestro código
Plug 'easymotion/vim-easymotion'
" Permite ver directorios
Plug 'scrooloose/nerdtree'
" Permite movernos entre las distintas pantallas abiertas (se activa con la tecla Ctrl)
Plug 'Christoomey/vim-tmux-navigator'

call plug#end()

" ===========================================

" CONFIGURANDO COLOR DEL TEMA gruvbox

colorscheme gruvbox
let g:guvbox_contrast_dark = "hard"


" ===========================================


" DECLARA ESPACIO COMO TECLA PRINCIAL PARA EJECUTAR UN PLUGIN

let mapleader=" "

" SE CONFIGURA LA TECLA QUE IRÁ DESPÚES DE LA TECLA PRINCIPAL EN ESTE CASO ES LA "s"

nmap <Leader>s <Plug>(easymotion-s2)


" ===========================================


" SE CONFIGURA LAS TECLAS QUE PULSAREMOS PARA EJECUTAR EL PLUGIN NERDTree, EN ESTE CASO ES "nt"

nmap <Leader>nt :NERDTreeFind<CR>

" CONFIGURA NERDTree PARA QUE SE CIERRE LUEGO DE SELECCIONAR UN ARCHIVO

let NERDTreeQuitOnOpen=1

" ===========================================

" OTRAS CONFIGURACIONES DE ATAJOS

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" ==========================================

