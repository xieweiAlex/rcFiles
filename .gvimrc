
set columns=140       " default GUI window width (80) is too narrow
set lines=999         " create windows with maximum height by default
set guifont=Monaco:h18


if has('gui_macvim')
  set fuopt+=maxhorz  " maximum horizontal width on entering fullscreen mode
endif
