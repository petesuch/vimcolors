" Vim color file
" Maintainer:	Peter Suchsland <visiondoctor2020@gmail.com>
" Last Change:	2020 December 21

" darkpete -- for those who prefer dark background and a colorful, but not too
" colorful foreground

if exists("syntax_on")
  syntax reset
endif

"hi Normal gui=NONE cterm=NONE term=NONE
set bg=dark
hi clear
set background=dark

hi Normal       guifg=white     guibg=black   ctermfg=white   ctermbg=black    gui=none      cterm=none
hi Comment      guifg=#8A8A8A   guibg=gray15  ctermfg=200     ctermbg=NONE      gui=none      cterm=none
hi Constant     guifg=#D717Bf   guibg=gray15  ctermfg=187     ctermbg=NONE      gui=none      cterm=none
hi String       guifg=white     guibg=gray15
hi Number       guifg=green     guibg=gray15
hi Boolean      guifg=#FF1360   guibg=gray15
hi Float        guifg=#CCA360   guibg=gray15
hi Identifier   guifg=#EA87C7   guibg=gray15    ctermfg=150     ctermbg=NONE      gui=none      cterm=none
hi Function     guifg=#60AAFF   guibg=gray20    ctermfg=white
hi Conditional  guifg=#FF6B13   guibg=gray15    gui=bold        ctermfg=red
hi Statement    guifg=#E7AFC7   guibg=gray15    ctermfg=100     ctermbg=NONE      gui=none      cterm=none
hi Repeat       guifg=#DCEFFD   guibg=gray20
hi Label        guifg=blue      guibg=gray10
hi Keyword      guifg=#FADE60   guibg=gray10    ctermfg=white
hi Operator     guifg=#ACDE60   guibg=gray10
hi Exception    guifg=red       guibg=gray10
hi PreProc      guifg=#87BEC7   guibg=gray15      ctermfg=96      ctermbg=NONE      gui=none      cterm=none
hi Type         guifg=#AFC7D7   guibg=gray15      ctermfg=152     ctermbg=NONE      gui=none      cterm=none
hi Special      guifg=#D7D7AE   guibg=gray15      ctermfg=187     ctermbg=NONE      gui=none      cterm=none
hi NonText      guifg=white     guibg=gray10
