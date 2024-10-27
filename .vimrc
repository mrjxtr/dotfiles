set number            " Show absolute line number for the current line
set relativenumber    " Show relative line numbers for other lines

set ttimeoutlen=50    " No delay between switching modes in vim
let &t_SI = "\e[5 q"  " Insert mode blinking bar
let &t_SR = "\e[3 q"  " Replace mode mode blinking underline
let &t_EI = "\e[1 q"  " Normal mode blinking box
