" DIRECCION DEL ARCHIVO vimrc
" ' /home/christiam/.vimrc
"==============================================

set number										" Permite colocar números al lado izquierdo dentro del exitor
set mouse=a										" Permite interactuar con el mouse dentro de vim
set numberwidth=1							" Ancho de los números
set clipboard=unnamed					" Permite usar el clipboard dentro de vim
syntax enable									" Habilita la sintaxis dentro de vim
set showcmd										" Muestra comandos que se estan ejecutando
set ruler										  " Muestra la posición
set encoding=utf-8						" Codificación de archivos
set showmatch									" Al posicionar en un parentecis resalta el de cierre
set sw=2										  " Utiliza el tab con 2 espacios
set relativenumber						" Muestra números relativos dependiendo de nuestra posición
set laststatus=2							" Barra de estado siempre será visible
set noshowmode								" Deja de mostrar el texto de INSERTAR

" ===========================================

" DIRECCIÓN DE LOS PLUGINS

call plug#begin('/home/christiam/.config/nvim/plugged')

" TEMAS
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'				  " Permite navegar o realizar saltos entre nuestro código
Plug 'scrooloose/nerdtree'						    " Permite ver directorios
Plug 'Christoomey/vim-tmux-navigator'		  " Permite movernos entre las distintas pantallas abiertas (se activa con la tecla Ctrl)

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

