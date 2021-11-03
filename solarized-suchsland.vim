" Name:         Solarized-suchsland
" Author:       Ethan Schoonover modded by petesuch
" License:      MIT license
" Notes:        I needed a darker background

hi clear
let g:colors_name = 'solarized-suchsland'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

let s:t_Co = get(g:, 'solarized_use16', 0) ? 16 : s:t_Co
let s:italics = s:italics && get(g:, 'solarized_italics', 1)
let s:termtrans = get(g:, 'solarized_termtrans', 0) && !has('gui_running')
hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Statement
hi! link Debug Special
hi! link Define PreProc
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi! link QuickFixLine Search
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link lCursor Cursor

if (has('termguicolors') && &termguicolors) || has('gui_running')
  if &background ==# 'dark'
    let g:terminal_ansi_colors = ['#000000', '#dc322f', '#859900', '#b58900', '#268bd2', '#d33682', '#2aa198', '#fdf6e3', '#002b36', '#cb4b16', '#657b83', '#839496', '#93a1a1', '#6c71c4', '#eee8d5', '#fdf6e3']
    if has('nvim')
      "let g:terminal_color_0 = '#031b21'
      let g:terminal_color_0 = '#000000'
      let g:terminal_color_1 = '#dc322f'
      let g:terminal_color_2 = '#859900'
      let g:terminal_color_3 = '#b58900'
      let g:terminal_color_4 = '#268bd2'
      let g:terminal_color_5 = '#d33682'
      let g:terminal_color_6 = '#2aa198'
      let g:terminal_color_7 = '#fdf6e3'
      let g:terminal_color_8 = '#002b36'
      let g:terminal_color_9 = '#cb4b16'
      let g:terminal_color_10 = '#657b83'
      let g:terminal_color_11 = '#839496'
      let g:terminal_color_12 = '#93a1a1'
      let g:terminal_color_13 = '#6c71c4'
      let g:terminal_color_14 = '#eee8d5'
      let g:terminal_color_15 = '#fdf6e3'
    endif
    if s:termtrans
      hi Normal guifg=#eee8d5 guibg=NONE gui=NONE cterm=NONE
      hi FoldColumn guifg=fg guibg=NONE gui=NONE cterm=NONE
      hi Folded guifg=fg guibg=NONE guisp=#002b36 gui=bold cterm=bold
      hi LineNr guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
      hi Terminal guifg=fg guibg=NONE gui=NONE cterm=NONE
    else
      hi Normal guifg=#eee8d5 guibg=#002b36 gui=NONE cterm=NONE
      hi FoldColumn guifg=#93a1a1 guibg=#073642 gui=NONE cterm=NONE
      hi Folded guifg=#93a1a1 guibg=#073642 guisp=#002b36 gui=bold cterm=bold
      hi LineNr guifg=#657b83 guibg=#073642 gui=NONE cterm=NONE
      hi Terminal guifg=fg guibg=#002b36 gui=NONE cterm=NONE
    endif
    if get(g:, 'solarized_visibility', '') ==# 'high'
      hi CursorLineNr guifg=#cb4b16 guibg=#073642 gui=bold cterm=bold
      hi NonText guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
      hi SpecialKey guifg=#cb4b16 guibg=NONE gui=reverse cterm=reverse
      hi SpellBad guifg=#6c71c4 guibg=#fdf6e3 guisp=#dc322f gui=reverse,undercurl cterm=reverse,underline
      hi SpellCap guifg=#6c71c4 guibg=#fdf6e3 guisp=#dc322f gui=reverse,undercurl cterm=reverse,underline
      hi SpellLocal guifg=#b58900 guibg=#fdf6e3 guisp=#dc322f gui=reverse,undercurl cterm=reverse,underline
      hi SpellRare guifg=#2aa198 guibg=#fdf6e3 guisp=#dc322f gui=reverse,undercurl cterm=reverse,underline
      hi Title guifg=#b58900 guibg=NONE gui=bold cterm=bold
    elseif get(g:, 'solarized_visibility', '') ==# 'low'
      hi CursorLineNr guifg=#657b83 guibg=#073642 gui=bold cterm=bold
      hi NonText guifg=#073642 guibg=NONE gui=bold cterm=bold
      hi SpecialKey guifg=#073642 guibg=NONE gui=reverse cterm=reverse
      hi SpellBad guifg=#6c71c4 guibg=NONE guisp=#cb4b16 gui=undercurl cterm=underline
      hi SpellCap guifg=#6c71c4 guibg=NONE guisp=#cb4b16 gui=undercurl cterm=underline
      hi SpellLocal guifg=#b58900 guibg=NONE guisp=#b58900 gui=undercurl cterm=underline
      hi SpellRare guifg=#2aa198 guibg=NONE guisp=#2aa198 gui=undercurl cterm=underline
      hi Title guifg=#657b83 guibg=NONE gui=bold cterm=bold
    else " normal visibility
      hi CursorLineNr guifg=#93a1a1 guibg=#073642 gui=bold cterm=bold
      hi NonText guifg=#839496 guibg=NONE gui=bold cterm=bold
      hi SpecialKey guifg=#839496 guibg=#073642 gui=bold cterm=bold
      hi SpellBad guifg=#6c71c4 guibg=NONE guisp=#cb4b16 gui=undercurl cterm=underline
      hi SpellCap guifg=#6c71c4 guibg=NONE guisp=#cb4b16 gui=undercurl cterm=underline
      hi SpellLocal guifg=#b58900 guibg=NONE guisp=#b58900 gui=undercurl cterm=underline
      hi SpellRare guifg=#2aa198 guibg=NONE guisp=#2aa198 gui=undercurl cterm=underline
      hi Title guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
    endif
    if s:termtrans
      hi CursorLineNr guibg=NONE
    endif
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor guifg=#002b36 guibg=#93a1a1 gui=NONE cterm=NONE
    else
      hi Cursor guifg=#fdf6e3 guibg=#268bd2 gui=NONE cterm=NONE
    endif
    if get(g:, 'solarized_diffmode', '') ==# 'high'
      hi DiffAdd guifg=#859900 guibg=NONE gui=reverse cterm=reverse
      hi DiffChange guifg=#b58900 guibg=NONE gui=reverse cterm=reverse
      hi DiffDelete guifg=#dc322f guibg=NONE gui=reverse cterm=reverse
      hi DiffText guifg=#268bd2 guibg=NONE gui=reverse cterm=reverse
    elseif get(g:, 'solarized_diffmode', '') ==# 'low'
      hi DiffAdd guifg=#859900 guibg=NONE guisp=#859900 gui=NONE cterm=NONE
      hi DiffChange guifg=#b58900 guibg=NONE guisp=#b58900 gui=NONE cterm=NONE
      hi DiffDelete guifg=#dc322f guibg=NONE gui=bold cterm=bold
      hi DiffText guifg=#268bd2 guibg=NONE guisp=#268bd2 gui=NONE cterm=NONE
    else " normal diffmode
      hi DiffAdd guifg=#859900 guibg=#073642 guisp=#859900 gui=NONE cterm=NONE
      hi DiffChange guifg=#b58900 guibg=#073642 guisp=#b58900 gui=NONE cterm=NONE
      hi DiffDelete guifg=#dc322f guibg=#073642 gui=bold cterm=bold
      hi DiffText guifg=#268bd2 guibg=#073642 guisp=#268bd2 gui=NONE cterm=NONE
    endif
    if get(g:, 'solarized_statusline', '') ==# 'low'
      hi StatusLine guifg=#657b83 guibg=#fdf6e3 gui=reverse cterm=reverse
      hi StatusLineNC guifg=#657b83 guibg=#073642 gui=reverse cterm=reverse
      hi TabLine guifg=#657b83 guibg=#073642 gui=reverse cterm=reverse
      hi TabLineFill guifg=#657b83 guibg=#073642 gui=reverse cterm=reverse
      hi TabLineSel guifg=#93a1a1 guibg=#fdf6e3 gui=reverse cterm=reverse
      hi VertSplit guifg=#073642 guibg=#657b83 gui=NONE cterm=NONE
    elseif get(g:, 'solarized_statusline', '') ==# 'flat'
      hi StatusLine guifg=#073642 guibg=#fdf6e3 gui=reverse cterm=reverse
      hi StatusLineNC guifg=#073642 guibg=#eee8d5 gui=reverse cterm=reverse
      hi TabLineSel guifg=#fdf6e3 guibg=#073642 gui=NONE cterm=NONE
      hi TabLine guifg=#657b83 guibg=#073642 gui=NONE cterm=NONE
      hi TabLineFill guifg=#657b83 guibg=#073642 gui=NONE cterm=NONE
      hi VertSplit guifg=#657b83 guibg=#073642 gui=NONE cterm=NONE
    else
      hi StatusLine guifg=#93a1a1 guibg=#073642 gui=reverse cterm=reverse
      hi StatusLineNC guifg=#657b83 guibg=#073642 gui=reverse cterm=reverse
      hi TabLine guifg=#657b83 guibg=#073642 gui=reverse cterm=reverse
      hi TabLineFill guifg=#657b83 guibg=#073642 gui=reverse cterm=reverse
      hi TabLineSel guifg=#93a1a1 guibg=#073642 gui=reverse cterm=reverse
      hi VertSplit guifg=#073642 guibg=#657b83 gui=NONE cterm=NONE
    endif
    hi ColorColumn guifg=NONE guibg=#073642 gui=NONE cterm=NONE
    hi Conceal guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi CursorColumn guifg=NONE guibg=#073642 gui=NONE cterm=NONE
    hi CursorLine guifg=NONE guibg=#073642 guisp=#eee8d5 gui=NONE cterm=NONE
    hi Directory guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi EndOfBuffer guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg guifg=#dc322f guibg=#fdf6e3 gui=reverse cterm=reverse
    hi IncSearch guifg=#cb4b16 guibg=NONE gui=standout cterm=standout
    hi MatchParen guifg=#fdf6e3 guibg=#073642 gui=bold cterm=bold
    hi ModeMsg guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi MoreMsg guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi Pmenu guifg=#eee8d5 guibg=#073642 gui=NONE cterm=NONE
    hi PmenuSbar guifg=NONE guibg=#93a1a1 gui=NONE cterm=NONE
    hi PmenuSel guifg=#fdf6e3 guibg=#657b83 gui=NONE cterm=NONE
    hi PmenuThumb guifg=NONE guibg=#657b83 gui=NONE cterm=NONE
    hi Question guifg=#2aa198 guibg=NONE gui=bold cterm=bold
    hi Search guifg=#b58900 guibg=NONE gui=reverse cterm=reverse
    hi SignColumn guifg=#93a1a1 guibg=NONE gui=NONE cterm=NONE
    hi Visual guifg=#657b83 guibg=#002b36 gui=reverse cterm=reverse
    hi VisualNOS guifg=NONE guibg=#073642 gui=reverse cterm=reverse
    hi WarningMsg guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
    hi WildMenu guifg=#fdf6e3 guibg=#073642 gui=reverse cterm=reverse
    hi Comment guifg=#839496 guibg=NONE gui=italic cterm=italic
    hi Constant guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi Error guifg=#dc322f guibg=#fdf6e3 gui=bold,reverse cterm=bold,reverse
    hi Identifier guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi PreProc guifg=#cb4b16 guibg=NONE gui=NONE cterm=NONE
    hi Special guifg=#cb4b16 guibg=NONE gui=NONE cterm=NONE
    hi Statement guifg=#859900 guibg=NONE gui=NONE cterm=NONE
    hi Todo guifg=#d33682 guibg=NONE gui=bold cterm=bold
    hi Type guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi Underlined guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
    hi CursorIM guifg=NONE guibg=fg gui=NONE cterm=NONE
    hi ToolbarLine guifg=NONE guibg=#073642 gui=NONE cterm=NONE
    hi ToolbarButton guifg=#eee8d5 guibg=#073642 gui=bold cterm=bold
    hi NormalMode guifg=#93a1a1 guibg=#fdf6e3 gui=reverse cterm=reverse
    hi InsertMode guifg=#2aa198 guibg=#fdf6e3 gui=reverse cterm=reverse
    hi ReplaceMode guifg=#cb4b16 guibg=#fdf6e3 gui=reverse cterm=reverse
    hi VisualMode guifg=#d33682 guibg=#fdf6e3 gui=reverse cterm=reverse
    hi CommandMode guifg=#d33682 guibg=#fdf6e3 gui=reverse cterm=reverse
    if !s:italics
      hi Comment gui=NONE cterm=NONE
    endif
    if has('nvim')
      hi! link TermCursor Cursor
      hi TermCursorNC guifg=#002b36 guibg=#657b83 gui=NONE cterm=NONE
    endif
    if !get(g:, 'solarized_extra_hi_groups', 0)
      unlet s:t_Co s:italics s:termtrans
      finish
    endif
    hi! link vimVar Identifier
    hi! link vimFunc Function
    hi! link vimUserFunc Function
    hi! link helpSpecial Special
    hi! link vimSet Normal
    hi! link vimSetEqual Normal
    hi vimCommentString guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
    hi vimCommand guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi vimCmdSep guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi helpExample guifg=#eee8d5 guibg=NONE gui=NONE cterm=NONE
    hi helpOption guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi helpNote guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
    hi helpVim guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
    hi helpHyperTextJump guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi helpHyperTextEntry guifg=#859900 guibg=NONE gui=NONE cterm=NONE
    hi vimIsCommand guifg=#839496 guibg=NONE gui=NONE cterm=NONE
    hi vimSynMtchOpt guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi vimSynType guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi vimHiLink guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi vimHiGroup guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi vimGroup guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi! link diffAdded Statement
    hi! link diffLine Identifier
    hi gitcommitComment guifg=#657b83 guibg=NONE gui=italic cterm=italic
    hi! link gitcommitUntracked gitcommitComment
    hi! link gitcommitDiscarded gitcommitComment
    hi! link gitcommitSelected gitcommitComment
    hi gitcommitUnmerged guifg=#859900 guibg=NONE gui=bold cterm=bold
    hi gitcommitOnBranch guifg=#657b83 guibg=NONE gui=bold cterm=bold
    hi gitcommitBranch guifg=#d33682 guibg=NONE gui=bold cterm=bold
    hi! link gitcommitNoBranch gitcommitBranch
    hi gitcommitdiscardedtype guifg=#dc322f guibg=NONE gui=NONE cterm=NONE
    hi gitcommitselectedtype guifg=#859900 guibg=NONE gui=NONE cterm=NONE
    hi gitcommitHeader guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
    hi gitcommitUntrackedFile guifg=#2aa198 guibg=NONE gui=bold cterm=bold
    hi gitcommitDiscardedFile guifg=#dc322f guibg=NONE gui=bold cterm=bold
    hi gitcommitSelectedFile guifg=#859900 guibg=NONE gui=bold cterm=bold
    hi gitcommitUnmergedFile guifg=#b58900 guibg=NONE gui=bold cterm=bold
    hi gitcommitFile guifg=#93a1a1 guibg=NONE gui=bold cterm=bold
    hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
    hi! link gitcommitSelectedArrow gitcommitSelectedFile
    hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
    hi htmlTag guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
    hi htmlEndTag guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
    hi htmlTagN guifg=#eee8d5 guibg=NONE gui=bold cterm=bold
    hi htmlTagName guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi htmlSpecialTagName guifg=#268bd2 guibg=NONE gui=italic cterm=italic
    hi htmlArg guifg=#839496 guibg=NONE gui=NONE cterm=NONE
    hi javaScript guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi! link jsFuncCall Function
    hi perlHereDoc guifg=#eee8d5 guibg=NONE gui=NONE cterm=NONE
    hi perlVarPlain guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi perlStatementFileDesc guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi texstatement guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi texmathzonex guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi texmathmatcher guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi texreflabel guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi rubyDefine guifg=#eee8d5 guibg=NONE gui=bold cterm=bold
    hi! link rubySymbol Type
    hi rubyBoolean guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
    hi cPreCondit guifg=#cb4b16 guibg=NONE gui=NONE cterm=NONE
    hi VarId guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi ConId guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi hsImport guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
    hi hsString guifg=#839496 guibg=NONE gui=NONE cterm=NONE
    hi hsStructure guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi hs_hlFunctionName guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi hsStatement guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi hsImportLabel guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi hs_OpFunctionName guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi hs_DeclareFunction guifg=#cb4b16 guibg=NONE gui=NONE cterm=NONE
    hi hsVarSym guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi hsType guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi hsTypedef guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi hsModuleName guifg=#859900 guibg=NONE gui=NONE cterm=NONE
    hi! link hsImportParams Delimiter
    hi! link hsDelimTypeExport Delimiter
    hi! link hsModuleStartLabel hsStructure
    hi! link hsModuleWhereLabel hsModuleStartLabel
    hi hsNiceOperator guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi hsniceoperator guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    if !s:italics
      hi gitcommitComment gui=NONE cterm=NONE
      hi htmlSpecialTagName gui=NONE cterm=NONE
    endif
    let hs_highlight_boolean=1
    let hs_highlight_delimiters=1
    hi pandocTitleBlock guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi pandocTitleBlockTitle guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi pandocTitleComment guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi pandocComment guifg=#657b83 guibg=NONE gui=italic cterm=italic
    hi pandocVerbatimBlock guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
    hi! link pandocCodeBlock pandocVerbatimBlock
    hi! link pandocCodeBlockDelim pandocVerbatimBlock
    hi pandocBlockQuote guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi pandocBlockQuoteLeader1 guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi pandocBlockQuoteLeader2 guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi pandocBlockQuoteLeader3 guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi pandocBlockQuoteLeader4 guifg=#dc322f guibg=NONE gui=NONE cterm=NONE
    hi pandocBlockQuoteLeader5 guifg=#93a1a1 guibg=NONE gui=NONE cterm=NONE
    hi pandocBlockQuoteLeader6 guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
    hi pandocListMarker guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
    hi pandocListReference guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
    hi pandocDefinitionBlock guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
    hi pandocDefinitionTerm guifg=#6c71c4 guibg=NONE gui=standout cterm=standout
    hi pandocDefinitionIndctr guifg=#6c71c4 guibg=NONE gui=bold cterm=bold
    hi pandocEmphasisDefinition guifg=#6c71c4 guibg=NONE gui=italic cterm=italic
    hi pandocEmphasisNestedDefinition guifg=#6c71c4 guibg=NONE gui=bold cterm=bold
    hi pandocStrongEmphasisDefinition guifg=#6c71c4 guibg=NONE gui=bold cterm=bold
    hi pandocStrongEmphasisNestedDefinition guifg=#6c71c4 guibg=NONE gui=bold cterm=bold
    hi pandocStrongEmphasisEmphasisDefinition guifg=#6c71c4 guibg=NONE gui=bold cterm=bold
    hi pandocStrikeoutDefinition guifg=#6c71c4 guibg=NONE gui=reverse cterm=reverse
    hi pandocVerbatimInlineDefinition guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
    hi pandocSuperscriptDefinition guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
    hi pandocSubscriptDefinition guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
    hi pandocTable guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi pandocTableStructure guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi! link pandocTableStructureTop pandocTableStructre
    hi! link pandocTableStructureEnd pandocTableStructre
    hi pandocTableZebraLight guifg=#268bd2 guibg=#002b36 gui=NONE cterm=NONE
    hi pandocTableZebraDark guifg=#268bd2 guibg=#073642 gui=NONE cterm=NONE
    hi pandocEmphasisTable guifg=#268bd2 guibg=NONE gui=italic cterm=italic
    hi pandocEmphasisNestedTable guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi pandocStrongEmphasisTable guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi pandocStrongEmphasisNestedTable guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi pandocStrongEmphasisEmphasisTable guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi pandocStrikeoutTable guifg=#268bd2 guibg=NONE gui=reverse cterm=reverse
    hi pandocVerbatimInlineTable guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi pandocSuperscriptTable guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi pandocSubscriptTable guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi pandocHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
    hi pandocHeadingMarker guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
    hi pandocEmphasisHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
    hi pandocEmphasisNestedHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
    hi pandocStrongEmphasisHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
    hi pandocStrongEmphasisNestedHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
    hi pandocStrongEmphasisEmphasisHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
    hi pandocStrikeoutHeading guifg=#cb4b16 guibg=NONE gui=reverse cterm=reverse
    hi pandocVerbatimInlineHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
    hi pandocSuperscriptHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
    hi pandocSubscriptHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
    hi pandocLinkDelim guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
    hi pandocLinkLabel guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi pandocLinkText guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi pandocLinkURL guifg=#839496 guibg=NONE gui=NONE cterm=NONE
    hi pandocLinkTitle guifg=#839496 guibg=NONE gui=NONE cterm=NONE
    hi pandocLinkTitleDelim guifg=#657b83 guibg=NONE guisp=#839496 gui=NONE cterm=NONE
    hi pandocLinkDefinition guifg=#2aa198 guibg=NONE guisp=#839496 gui=NONE cterm=NONE
    hi pandocLinkDefinitionID guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi pandocImageCaption guifg=#6c71c4 guibg=NONE gui=bold cterm=bold
    hi pandocFootnoteLink guifg=#859900 guibg=NONE gui=NONE cterm=NONE
    hi pandocFootnoteDefLink guifg=#859900 guibg=NONE gui=bold cterm=bold
    hi pandocFootnoteInline guifg=#859900 guibg=NONE gui=bold cterm=bold
    hi pandocFootnote guifg=#859900 guibg=NONE gui=NONE cterm=NONE
    hi pandocCitationDelim guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
    hi pandocCitation guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
    hi pandocCitationID guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
    hi pandocCitationRef guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
    hi pandocStyleDelim guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
    hi pandocEmphasis guifg=#93a1a1 guibg=NONE gui=italic cterm=italic
    hi pandocEmphasisNested guifg=#93a1a1 guibg=NONE gui=bold cterm=bold
    hi pandocStrongEmphasis guifg=#93a1a1 guibg=NONE gui=bold cterm=bold
    hi pandocStrongEmphasisNested guifg=#93a1a1 guibg=NONE gui=bold cterm=bold
    hi pandocStrongEmphasisEmphasis guifg=#93a1a1 guibg=NONE gui=bold cterm=bold
    hi pandocStrikeout guifg=#657b83 guibg=NONE gui=reverse cterm=reverse
    hi pandocVerbatimInline guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    hi pandocSuperscript guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
    hi pandocSubscript guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
    hi pandocRule guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi pandocRuleLine guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi pandocEscapePair guifg=#dc322f guibg=NONE gui=bold cterm=bold
    hi pandocCitationRef guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
    hi pandocNonBreakingSpace guifg=#dc322f guibg=NONE gui=reverse cterm=reverse
    hi! link pandocEscapedCharacter pandocEscapePair
    hi! link pandocLineBreak pandocEscapePair
    hi pandocMetadataDelim guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
    hi pandocMetadata guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi pandocMetadataKey guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
    hi pandocMetadata guifg=#268bd2 guibg=NONE gui=bold cterm=bold
    hi! link pandocMetadataTitle pandocMetadata
    if !s:italics
      hi pandocComment gui=NONE cterm=NONE
      hi pandocEmphasisDefinition gui=NONE cterm=NONE
      hi pandocEmphasisTable gui=NONE cterm=NONE
      hi pandocEmphasis gui=NONE cterm=NONE
    endif
    if get(g:, 'solarized_statusline', '') ==# 'flat'
      hi ALEErrorSign guifg=#dc322f guibg=NONE gui=bold cterm=bold
      hi ALEInfoSign guifg=#2aa198 guibg=NONE gui=bold cterm=bold
      hi ALEWarningSign guifg=#b58900 guibg=NONE gui=bold cterm=bold
      hi ALEErrorSignLineNr guifg=#dc322f guibg=NONE gui=NONE cterm=NONE
      hi ALEInfoSignLineNr guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
      hi ALEWarningSignLineNr guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
    else
      if get(g:, 'ale_sign_highlight_linenrs', '') ==# 1
        hi ALEErrorSign guifg=#073642 guibg=#dc322f gui=bold cterm=bold
        hi ALEInfoSign guifg=#073642 guibg=#2aa198 gui=bold cterm=bold
        hi ALEWarningSign guifg=#073642 guibg=#b58900 gui=bold cterm=bold
      else
        hi ALEErrorSign guifg=#dc322f guibg=#073642 gui=bold cterm=bold
        hi ALEInfoSign guifg=#2aa198 guibg=#073642 gui=bold cterm=bold
        hi ALEWarningSign guifg=#b58900 guibg=#073642 gui=bold cterm=bold
      endif
      hi ALEErrorSignLineNr guifg=#073642 guibg=#dc322f gui=NONE cterm=NONE
      hi ALEInfoSignLineNr guifg=#073642 guibg=#2aa198 gui=NONE cterm=NONE
      hi ALEWarningSignLineNr guifg=#073642 guibg=#b58900 gui=NONE cterm=NONE
    endif
    hi ALEError guifg=#dc322f guibg=NONE guisp=#dc322f gui=undercurl cterm=undercurl
    hi ALEErrorLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ALEInfo guifg=#2aa198 guibg=NONE guisp=#2aa198 gui=undercurl cterm=undercurl
    hi ALEInfoLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ALEWarning guifg=#b58900 guibg=NONE guisp=#b58900 gui=undercurl cterm=undercurl
    hi ALEWarningLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi! link ALEStyleError ALEError
    hi! link ALEStyleErrorSign ALEErrorSign
    hi! link ALEStyleErrorSignLineNr ALEErrorSignLineNr
    hi! link ALEStyleWarning ALEWarning
    hi! link ALEStyleWarningSign ALEWarningSign
    hi! link ALEStyleWarningSignLineNr ALEWarningSignLineNr
    unlet s:termtrans
    unlet s:t_Co s:italics
    finish
  endif
  " Light background
  let g:terminal_ansi_colors = ['#002b36', '#dc322f', '#859900', '#b58900', '#268bd2', '#d33682', '#2aa198', '#eee8d5', '#002b36', '#cb4b16', '#073642', '#586e75', '#657b83', '#6c71c4', '#93a1a1', '#fdf6e3']
  if has('nvim')
    let g:terminal_color_0 = '#002b36'
    let g:terminal_color_1 = '#dc322f'
    let g:terminal_color_2 = '#859900'
    let g:terminal_color_3 = '#b58900'
    let g:terminal_color_4 = '#268bd2'
    let g:terminal_color_5 = '#d33682'
    let g:terminal_color_6 = '#2aa198'
    let g:terminal_color_7 = '#eee8d5'
    let g:terminal_color_8 = '#002b36'
    let g:terminal_color_9 = '#cb4b16'
    let g:terminal_color_10 = '#073642'
    let g:terminal_color_11 = '#586e75'
    let g:terminal_color_12 = '#657b83'
    let g:terminal_color_13 = '#6c71c4'
    let g:terminal_color_14 = '#93a1a1'
    let g:terminal_color_15 = '#fdf6e3'
  endif
  if s:termtrans
    hi Normal guifg=#073642 guibg=NONE gui=NONE cterm=NONE
    hi FoldColumn guifg=#586e75 guibg=NONE gui=NONE cterm=NONE
    hi Folded guifg=#586e75 guibg=NONE guisp=#fdf6e3 gui=bold cterm=bold
    hi LineNr guifg=#93a1a1 guibg=NONE gui=NONE cterm=NONE
    hi Terminal guifg=fg guibg=NONE gui=NONE cterm=NONE
  else
    hi Normal guifg=#073642 guibg=#fdf6e3 gui=NONE cterm=NONE
    hi FoldColumn guifg=#586e75 guibg=#eee8d5 gui=NONE cterm=NONE
    hi Folded guifg=#586e75 guibg=#eee8d5 guisp=#fdf6e3 gui=bold cterm=bold
    hi LineNr guifg=#93a1a1 guibg=#eee8d5 gui=NONE cterm=NONE
    hi Terminal guifg=fg guibg=#fdf6e3 gui=NONE cterm=NONE
  endif
  if get(g:, 'solarized_visibility', '') ==# 'high'
    hi CursorLineNr guifg=#dc322f guibg=#eee8d5 gui=bold cterm=bold
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor guifg=#fdf6e3 guibg=#586e75 gui=NONE cterm=NONE
    else
      hi Cursor guifg=#fdf6e3 guibg=#dc322f gui=NONE cterm=NONE
    endif
    hi MatchParen guifg=#fdf6e3 guibg=#657b83 gui=bold cterm=bold
    hi NonText guifg=#dc322f guibg=NONE gui=bold cterm=bold
    hi SpecialKey guifg=#dc322f guibg=NONE gui=reverse cterm=reverse
    hi SpellBad guifg=#d33682 guibg=#fdf6e3 guisp=#6c71c4 gui=reverse,undercurl cterm=reverse,underline
    hi SpellCap guifg=#d33682 guibg=#fdf6e3 guisp=#6c71c4 gui=reverse,undercurl cterm=reverse,underline
    hi SpellLocal guifg=#b58900 guibg=#fdf6e3 guisp=#cb4b16 gui=reverse,undercurl cterm=reverse,underline
    hi SpellRare guifg=#2aa198 guibg=#fdf6e3 guisp=#cb4b16 gui=reverse,undercurl cterm=reverse,underline
    hi Title guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  elseif get(g:, 'solarized_visibility', '') ==# 'low'
    hi CursorLineNr guifg=#93a1a1 guibg=#eee8d5 gui=bold cterm=bold
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor guifg=#fdf6e3 guibg=#586e75 gui=NONE cterm=NONE
    else
      hi Cursor guifg=#fdf6e3 guibg=#cb4b16 gui=NONE cterm=NONE
    endif
    hi MatchParen guifg=#dc322f guibg=#eee8d5 gui=bold,underline cterm=bold,underline
    hi NonText guifg=#eee8d5 guibg=NONE gui=bold cterm=bold
    hi SpecialKey guifg=#eee8d5 guibg=NONE gui=bold cterm=bold
    hi SpellBad guifg=#d33682 guibg=NONE guisp=#6c71c4 gui=undercurl cterm=underline
    hi SpellCap guifg=#d33682 guibg=NONE guisp=#6c71c4 gui=undercurl cterm=underline
    hi SpellLocal guifg=#b58900 guibg=NONE guisp=#b58900 gui=undercurl cterm=underline
    hi SpellRare guifg=#2aa198 guibg=NONE guisp=#2aa198 gui=undercurl cterm=underline
    hi Title guifg=#93a1a1 guibg=NONE gui=bold cterm=bold
  else
    hi CursorLineNr guifg=#586e75 guibg=#eee8d5 gui=bold cterm=bold
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor guifg=#fdf6e3 guibg=#586e75 gui=NONE cterm=NONE
    else
      hi Cursor guifg=#fdf6e3 guibg=#cb4b16 gui=NONE cterm=NONE
    endif
    hi MatchParen guifg=#dc322f guibg=#eee8d5 gui=bold,underline cterm=bold,underline
    hi NonText guifg=#657b83 guibg=NONE gui=bold cterm=bold
    hi SpecialKey guifg=#657b83 guibg=#eee8d5 gui=bold cterm=bold
    hi SpellBad guifg=#d33682 guibg=NONE guisp=#6c71c4 gui=undercurl cterm=underline
    hi SpellCap guifg=#d33682 guibg=NONE guisp=#6c71c4 gui=undercurl cterm=underline
    hi SpellLocal guifg=#b58900 guibg=NONE guisp=#b58900 gui=undercurl cterm=underline
    hi SpellRare guifg=#2aa198 guibg=NONE guisp=#2aa198 gui=undercurl cterm=underline
    hi Title guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  endif
  if s:termtrans
    hi CursorLineNr guibg=NONE
  endif
  if get(g:, 'solarized_diffmode', '') ==# 'high'
    hi DiffAdd guifg=#859900 guibg=NONE gui=reverse cterm=reverse
    hi DiffChange guifg=#b58900 guibg=NONE gui=reverse cterm=reverse
    hi DiffDelete guifg=#dc322f guibg=NONE gui=reverse cterm=reverse
    hi DiffText guifg=#268bd2 guibg=NONE gui=reverse cterm=reverse
  elseif get(g:, 'solarized_diffmode', '') ==# 'low'
    hi DiffAdd guifg=#859900 guibg=NONE guisp=#859900 gui=NONE cterm=NONE
    hi DiffChange guifg=#b58900 guibg=NONE guisp=#b58900 gui=NONE cterm=NONE
    hi DiffDelete guifg=#dc322f guibg=NONE gui=bold cterm=bold
    hi DiffText guifg=#268bd2 guibg=NONE guisp=#268bd2 gui=NONE cterm=NONE
  else " normal diffmode
    hi DiffAdd guifg=#859900 guibg=#eee8d5 guisp=#859900 gui=NONE cterm=NONE
    hi DiffChange guifg=#b58900 guibg=#eee8d5 guisp=#b58900 gui=NONE cterm=NONE
    hi DiffDelete guifg=#dc322f guibg=#eee8d5 gui=bold cterm=bold
    hi DiffText guifg=#268bd2 guibg=#eee8d5 guisp=#268bd2 gui=NONE cterm=NONE
  endif
  if get(g:, 'solarized_statusline', '') ==# 'low'
    hi StatusLine guifg=#93a1a1 guibg=#fdf6e3 gui=reverse cterm=reverse
    hi StatusLineNC guifg=#93a1a1 guibg=#073642 gui=reverse cterm=reverse
    hi TabLine guifg=#93a1a1 guibg=#073642 gui=reverse cterm=reverse
    hi TabLineFill guifg=#93a1a1 guibg=#073642 gui=reverse cterm=reverse
    hi TabLineSel guifg=#073642 guibg=#fdf6e3 gui=reverse cterm=reverse
    hi VertSplit guifg=#073642 guibg=#93a1a1 gui=NONE cterm=NONE
    hi WildMenu guifg=#073642 guibg=#fdf6e3 gui=reverse cterm=reverse
  elseif get(g:, 'solarized_statusline', '') ==# 'flat'
    hi StatusLine guifg=#eee8d5 guibg=#002b36 gui=reverse cterm=reverse
    hi StatusLineNC guifg=#eee8d5 guibg=#073642 gui=reverse cterm=reverse
    hi TabLineSel guifg=#002b36 guibg=#eee8d5 gui=NONE cterm=NONE
    hi TabLine guifg=#93a1a1 guibg=#eee8d5 gui=NONE cterm=NONE
    hi TabLineFill guifg=#93a1a1 guibg=#eee8d5 gui=NONE cterm=NONE
    hi VertSplit guifg=#93a1a1 guibg=#eee8d5 gui=NONE cterm=NONE
    hi WildMenu guifg=#586e75 guibg=#fdf6e3 gui=reverse cterm=reverse
  else
    hi StatusLine guifg=#073642 guibg=#eee8d5 gui=reverse cterm=reverse
    hi StatusLineNC guifg=#657b83 guibg=#eee8d5 gui=reverse cterm=reverse
    hi TabLine guifg=#657b83 guibg=#eee8d5 gui=reverse cterm=reverse
    hi TabLineFill guifg=#657b83 guibg=#eee8d5 gui=reverse cterm=reverse
    hi TabLineSel guifg=#073642 guibg=#eee8d5 gui=reverse cterm=reverse
    hi VertSplit guifg=#073642 guibg=#93a1a1 gui=NONE cterm=NONE
    hi WildMenu guifg=#657b83 guibg=#fdf6e3 gui=reverse cterm=reverse
  endif
  hi ColorColumn guifg=NONE guibg=#eee8d5 gui=NONE cterm=NONE
  hi Conceal guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi CursorColumn guifg=NONE guibg=#eee8d5 gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=#eee8d5 guisp=#073642 gui=NONE cterm=NONE
  hi Directory guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi EndOfBuffer guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ErrorMsg guifg=#dc322f guibg=#fdf6e3 gui=reverse cterm=reverse
  hi IncSearch guifg=#cb4b16 guibg=NONE gui=standout cterm=standout
  hi ModeMsg guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi MoreMsg guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#073642 guibg=#eee8d5 gui=NONE cterm=NONE
  hi PmenuSbar guifg=NONE guibg=#073642 gui=NONE cterm=NONE
  hi PmenuSel guifg=#002b36 guibg=#93a1a1 gui=NONE cterm=NONE
  hi PmenuThumb guifg=NONE guibg=#657b83 gui=NONE cterm=NONE
  hi Question guifg=#2aa198 guibg=NONE gui=bold cterm=bold
  hi Search guifg=#b58900 guibg=NONE gui=reverse cterm=reverse
  hi SignColumn guifg=#586e75 guibg=NONE gui=NONE cterm=NONE
  hi Visual guifg=#93a1a1 guibg=#fdf6e3 gui=reverse cterm=reverse
  hi VisualNOS guifg=NONE guibg=#eee8d5 gui=reverse cterm=reverse
  hi WarningMsg guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  hi Comment guifg=#657b83 guibg=NONE gui=italic cterm=italic
  hi Constant guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  hi CursorIM guifg=NONE guibg=fg gui=NONE cterm=NONE
  hi Error guifg=#dc322f guibg=#fdf6e3 gui=bold,reverse cterm=bold,reverse
  hi Identifier guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PreProc guifg=#cb4b16 guibg=NONE gui=NONE cterm=NONE
  hi Special guifg=#cb4b16 guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg=#859900 guibg=NONE gui=NONE cterm=NONE
  hi Todo guifg=#d33682 guibg=NONE gui=bold cterm=bold
  hi ToolbarButton guifg=#073642 guibg=#eee8d5 gui=bold cterm=bold
  hi ToolbarLine guifg=NONE guibg=#eee8d5 gui=NONE cterm=NONE
  hi Type guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
  hi NormalMode guifg=#073642 guibg=#fdf6e3 gui=reverse cterm=reverse
  hi InsertMode guifg=#2aa198 guibg=#fdf6e3 gui=reverse cterm=reverse
  hi ReplaceMode guifg=#cb4b16 guibg=#fdf6e3 gui=reverse cterm=reverse
  hi VisualMode guifg=#d33682 guibg=#fdf6e3 gui=reverse cterm=reverse
  hi CommandMode guifg=#d33682 guibg=#fdf6e3 gui=reverse cterm=reverse
  if !s:italics
    hi Comment gui=NONE cterm=NONE
  endif
  if has('nvim')
    hi! link TermCursor Cursor
    hi TermCursorNC guifg=#fdf6e3 guibg=#93a1a1 gui=NONE cterm=NONE
  endif
  if !get(g:, 'solarized_extra_hi_groups', 0)
    unlet s:t_Co s:italics s:termtrans
    finish
  endif
  hi! link vimVar Identifier
  hi! link vimFunc Function
  hi! link vimUserFunc Function
  hi! link helpSpecial Special
  hi! link vimSet Normal
  hi! link vimSetEqual Normal
  hi vimCommentString guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
  hi vimCommand guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi vimCmdSep guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi helpExample guifg=#073642 guibg=NONE gui=NONE cterm=NONE
  hi helpOption guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  hi helpNote guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
  hi helpVim guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
  hi helpHyperTextJump guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi helpHyperTextEntry guifg=#859900 guibg=NONE gui=NONE cterm=NONE
  hi vimIsCommand guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
  hi vimSynMtchOpt guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi vimSynType guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  hi vimHiLink guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi vimHiGroup guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi vimGroup guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi! link diffAdded Statement
  hi! link diffLine Identifier
  hi gitcommitComment guifg=#93a1a1 guibg=NONE gui=italic cterm=italic
  hi! link gitcommitUntracked gitcommitComment
  hi! link gitcommitDiscarded gitcommitComment
  hi! link gitcommitSelected gitcommitComment
  hi gitcommitUnmerged guifg=#859900 guibg=NONE gui=bold cterm=bold
  hi gitcommitOnBranch guifg=#93a1a1 guibg=NONE gui=bold cterm=bold
  hi gitcommitBranch guifg=#d33682 guibg=NONE gui=bold cterm=bold
  hi! link gitcommitNoBranch gitcommitBranch
  hi gitcommitdiscardedtype guifg=#dc322f guibg=NONE gui=NONE cterm=NONE
  hi gitcommitselectedtype guifg=#859900 guibg=NONE gui=NONE cterm=NONE
  hi gitcommitHeader guifg=#93a1a1 guibg=NONE gui=NONE cterm=NONE
  hi gitcommitUntrackedFile guifg=#2aa198 guibg=NONE gui=bold cterm=bold
  hi gitcommitDiscardedFile guifg=#dc322f guibg=NONE gui=bold cterm=bold
  hi gitcommitSelectedFile guifg=#859900 guibg=NONE gui=bold cterm=bold
  hi gitcommitUnmergedFile guifg=#b58900 guibg=NONE gui=bold cterm=bold
  hi gitcommitFile guifg=#586e75 guibg=NONE gui=bold cterm=bold
  hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
  hi! link gitcommitSelectedArrow gitcommitSelectedFile
  hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
  hi htmlTag guifg=#93a1a1 guibg=NONE gui=NONE cterm=NONE
  hi htmlEndTag guifg=#93a1a1 guibg=NONE gui=NONE cterm=NONE
  hi htmlTagN guifg=#073642 guibg=NONE gui=bold cterm=bold
  hi htmlTagName guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi htmlSpecialTagName guifg=#268bd2 guibg=NONE gui=italic cterm=italic
  hi htmlArg guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
  hi javaScript guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi! link jsFuncCall Function
  hi perlHereDoc guifg=#073642 guibg=NONE gui=NONE cterm=NONE
  hi perlVarPlain guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi perlStatementFileDesc guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  hi texstatement guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  hi texmathzonex guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi texmathmatcher guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi texreflabel guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi rubyDefine guifg=#073642 guibg=NONE gui=bold cterm=bold
  hi! link rubySymbol Type
  hi rubyBoolean guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
  hi cPreCondit guifg=#cb4b16 guibg=NONE gui=NONE cterm=NONE
  hi VarId guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi ConId guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi hsImport guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
  hi hsString guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
  hi hsStructure guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  hi hs_hlFunctionName guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi hsStatement guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  hi hsImportLabel guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  hi hs_OpFunctionName guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi hs_DeclareFunction guifg=#cb4b16 guibg=NONE gui=NONE cterm=NONE
  hi hsVarSym guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  hi hsType guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi hsTypedef guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  hi hsModuleName guifg=#859900 guibg=NONE gui=NONE cterm=NONE
  hi! link hsImportParams Delimiter
  hi! link hsDelimTypeExport Delimiter
  hi! link hsModuleStartLabel hsStructure
  hi! link hsModuleWhereLabel hsModuleStartLabel
  hi hsNiceOperator guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  hi hsniceoperator guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  if !s:italics
    hi gitcommitComment gui=NONE cterm=NONE
    hi htmlSpecialTagName gui=NONE cterm=NONE
  endif
  let hs_highlight_boolean=1
  let hs_highlight_delimiters=1
  hi pandocTitleBlock guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi pandocTitleBlockTitle guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi pandocTitleComment guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi pandocComment guifg=#93a1a1 guibg=NONE gui=italic cterm=italic
  hi pandocVerbatimBlock guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
  hi! link pandocCodeBlock pandocVerbatimBlock
  hi! link pandocCodeBlockDelim pandocVerbatimBlock
  hi pandocBlockQuote guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi pandocBlockQuoteLeader1 guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi pandocBlockQuoteLeader2 guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
  hi pandocBlockQuoteLeader3 guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi pandocBlockQuoteLeader4 guifg=#dc322f guibg=NONE gui=NONE cterm=NONE
  hi pandocBlockQuoteLeader5 guifg=#586e75 guibg=NONE gui=NONE cterm=NONE
  hi pandocBlockQuoteLeader6 guifg=#93a1a1 guibg=NONE gui=NONE cterm=NONE
  hi pandocListMarker guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
  hi pandocListReference guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
  hi pandocDefinitionBlock guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
  hi pandocDefinitionTerm guifg=#6c71c4 guibg=NONE gui=standout cterm=standout
  hi pandocDefinitionIndctr guifg=#6c71c4 guibg=NONE gui=bold cterm=bold
  hi pandocEmphasisDefinition guifg=#6c71c4 guibg=NONE gui=italic cterm=italic
  hi pandocEmphasisNestedDefinition guifg=#6c71c4 guibg=NONE gui=bold cterm=bold
  hi pandocStrongEmphasisDefinition guifg=#6c71c4 guibg=NONE gui=bold cterm=bold
  hi pandocStrongEmphasisNestedDefinition guifg=#6c71c4 guibg=NONE gui=bold cterm=bold
  hi pandocStrongEmphasisEmphasisDefinition guifg=#6c71c4 guibg=NONE gui=bold cterm=bold
  hi pandocStrikeoutDefinition guifg=#6c71c4 guibg=NONE gui=reverse cterm=reverse
  hi pandocVerbatimInlineDefinition guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
  hi pandocSuperscriptDefinition guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
  hi pandocSubscriptDefinition guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
  hi pandocTable guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi pandocTableStructure guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi! link pandocTableStructureTop pandocTableStructre
  hi! link pandocTableStructureEnd pandocTableStructre
  hi pandocTableZebraLight guifg=#268bd2 guibg=#fdf6e3 gui=NONE cterm=NONE
  hi pandocTableZebraDark guifg=#268bd2 guibg=#eee8d5 gui=NONE cterm=NONE
  hi pandocEmphasisTable guifg=#268bd2 guibg=NONE gui=italic cterm=italic
  hi pandocEmphasisNestedTable guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi pandocStrongEmphasisTable guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi pandocStrongEmphasisNestedTable guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi pandocStrongEmphasisEmphasisTable guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi pandocStrikeoutTable guifg=#268bd2 guibg=NONE gui=reverse cterm=reverse
  hi pandocVerbatimInlineTable guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi pandocSuperscriptTable guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi pandocSubscriptTable guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi pandocHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  hi pandocHeadingMarker guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  hi pandocEmphasisHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  hi pandocEmphasisNestedHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  hi pandocStrongEmphasisHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  hi pandocStrongEmphasisNestedHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  hi pandocStrongEmphasisEmphasisHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  hi pandocStrikeoutHeading guifg=#cb4b16 guibg=NONE gui=reverse cterm=reverse
  hi pandocVerbatimInlineHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  hi pandocSuperscriptHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  hi pandocSubscriptHeading guifg=#cb4b16 guibg=NONE gui=bold cterm=bold
  hi pandocLinkDelim guifg=#93a1a1 guibg=NONE gui=NONE cterm=NONE
  hi pandocLinkLabel guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi pandocLinkText guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi pandocLinkURL guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
  hi pandocLinkTitle guifg=#657b83 guibg=NONE gui=NONE cterm=NONE
  hi pandocLinkTitleDelim guifg=#93a1a1 guibg=NONE guisp=#657b83 gui=NONE cterm=NONE
  hi pandocLinkDefinition guifg=#2aa198 guibg=NONE guisp=#657b83 gui=NONE cterm=NONE
  hi pandocLinkDefinitionID guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi pandocImageCaption guifg=#6c71c4 guibg=NONE gui=bold cterm=bold
  hi pandocFootnoteLink guifg=#859900 guibg=NONE gui=NONE cterm=NONE
  hi pandocFootnoteDefLink guifg=#859900 guibg=NONE gui=bold cterm=bold
  hi pandocFootnoteInline guifg=#859900 guibg=NONE gui=bold cterm=bold
  hi pandocFootnote guifg=#859900 guibg=NONE gui=NONE cterm=NONE
  hi pandocCitationDelim guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
  hi pandocCitation guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
  hi pandocCitationID guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
  hi pandocCitationRef guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
  hi pandocStyleDelim guifg=#93a1a1 guibg=NONE gui=NONE cterm=NONE
  hi pandocEmphasis guifg=#586e75 guibg=NONE gui=italic cterm=italic
  hi pandocEmphasisNested guifg=#586e75 guibg=NONE gui=bold cterm=bold
  hi pandocStrongEmphasis guifg=#586e75 guibg=NONE gui=bold cterm=bold
  hi pandocStrongEmphasisNested guifg=#586e75 guibg=NONE gui=bold cterm=bold
  hi pandocStrongEmphasisEmphasis guifg=#586e75 guibg=NONE gui=bold cterm=bold
  hi pandocStrikeout guifg=#93a1a1 guibg=NONE gui=reverse cterm=reverse
  hi pandocVerbatimInline guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  hi pandocSuperscript guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
  hi pandocSubscript guifg=#6c71c4 guibg=NONE gui=NONE cterm=NONE
  hi pandocRule guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi pandocRuleLine guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi pandocEscapePair guifg=#dc322f guibg=NONE gui=bold cterm=bold
  hi pandocCitationRef guifg=#d33682 guibg=NONE gui=NONE cterm=NONE
  hi pandocNonBreakingSpace guifg=#dc322f guibg=NONE gui=reverse cterm=reverse
  hi! link pandocEscapedCharacter pandocEscapePair
  hi! link pandocLineBreak pandocEscapePair
  hi pandocMetadataDelim guifg=#93a1a1 guibg=NONE gui=NONE cterm=NONE
  hi pandocMetadata guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi pandocMetadataKey guifg=#268bd2 guibg=NONE gui=NONE cterm=NONE
  hi pandocMetadata guifg=#268bd2 guibg=NONE gui=bold cterm=bold
  hi! link pandocMetadataTitle pandocMetadata
  if !s:italics
    hi pandocComment gui=NONE cterm=NONE
    hi pandocEmphasisDefinition gui=NONE cterm=NONE
    hi pandocEmphasisTable gui=NONE cterm=NONE
    hi pandocEmphasis gui=NONE cterm=NONE
  endif
  if get(g:, 'solarized_statusline', '') ==# 'flat'
    hi ALEErrorSign guifg=#dc322f guibg=NONE gui=bold cterm=bold
    hi ALEInfoSign guifg=#2aa198 guibg=NONE gui=bold cterm=bold
    hi ALEWarningSign guifg=#b58900 guibg=NONE gui=bold cterm=bold
    hi ALEErrorSignLineNr guifg=#dc322f guibg=NONE gui=NONE cterm=NONE
    hi ALEInfoSignLineNr guifg=#2aa198 guibg=NONE gui=NONE cterm=NONE
    hi ALEWarningSignLineNr guifg=#b58900 guibg=NONE gui=NONE cterm=NONE
  else
    if get(g:, 'ale_sign_highlight_linenrs', '') ==# 1
      hi ALEErrorSign guifg=#eee8d5 guibg=#dc322f gui=bold cterm=bold
      hi ALEInfoSign guifg=#eee8d5 guibg=#2aa198 gui=bold cterm=bold
      hi ALEWarningSign guifg=#eee8d5 guibg=#b58900 gui=bold cterm=bold
    else
      hi ALEErrorSign guifg=#dc322f guibg=#eee8d5 gui=bold cterm=bold
      hi ALEInfoSign guifg=#2aa198 guibg=#eee8d5 gui=bold cterm=bold
      hi ALEWarningSign guifg=#b58900 guibg=#eee8d5 gui=bold cterm=bold
    endif
    hi ALEErrorSignLineNr guifg=#eee8d5 guibg=#dc322f gui=NONE cterm=NONE
    hi ALEInfoSignLineNr guifg=#eee8d5 guibg=#2aa198 gui=NONE cterm=NONE
    hi ALEWarningSignLineNr guifg=#eee8d5 guibg=#b58900 gui=NONE cterm=NONE
  endif
  hi ALEError guifg=#dc322f guibg=NONE guisp=#dc322f gui=undercurl cterm=undercurl
  hi ALEErrorLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ALEInfo guifg=#2aa198 guibg=NONE guisp=#2aa198 gui=undercurl cterm=undercurl
  hi ALEInfoLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ALEWarning guifg=#b58900 guibg=NONE guisp=#b58900 gui=undercurl cterm=undercurl
  hi ALEWarningLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi! link ALEStyleError ALEError
  hi! link ALEStyleErrorSign ALEErrorSign
  hi! link ALEStyleErrorSignLineNr ALEErrorSignLineNr
  hi! link ALEStyleWarning ALEWarning
  hi! link ALEStyleWarningSign ALEWarningSign
  hi! link ALEStyleWarningSignLineNr ALEWarningSignLineNr
  unlet s:termtrans
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 256
  if &background ==# 'dark'
    if s:termtrans
      hi Normal ctermfg=254 ctermbg=NONE cterm=NONE
      hi FoldColumn ctermfg=fg ctermbg=NONE cterm=NONE
      hi Folded ctermfg=fg ctermbg=NONE cterm=bold
      hi LineNr ctermfg=243 ctermbg=NONE cterm=NONE
      hi Terminal ctermfg=fg ctermbg=NONE cterm=NONE
    else
      hi Normal ctermfg=254 ctermbg=235 cterm=NONE
      if !has('patch-8.0.0616') && !has('nvim') " Fix for Vim bug
        set background=dark
      endif
      hi FoldColumn ctermfg=247 ctermbg=236 cterm=NONE
      hi Folded ctermfg=247 ctermbg=236 cterm=bold
      hi LineNr ctermfg=243 ctermbg=236 cterm=NONE
      hi Terminal ctermfg=fg ctermbg=235 cterm=NONE
    endif
    if get(g:, 'solarized_visibility', '') ==# 'high'
      hi CursorLineNr ctermfg=166 ctermbg=236 cterm=bold
      hi NonText ctermfg=166 ctermbg=NONE cterm=bold
      hi SpecialKey ctermfg=166 ctermbg=NONE cterm=reverse
      hi SpellBad ctermfg=61 ctermbg=230 cterm=reverse,underline
      hi SpellCap ctermfg=61 ctermbg=230 cterm=reverse,underline
      hi SpellLocal ctermfg=136 ctermbg=230 cterm=reverse,underline
      hi SpellRare ctermfg=37 ctermbg=230 cterm=reverse,underline
      hi Title ctermfg=136 ctermbg=NONE cterm=bold
    elseif get(g:, 'solarized_visibility', '') ==# 'low'
      hi CursorLineNr ctermfg=243 ctermbg=236 cterm=bold
      hi NonText ctermfg=236 ctermbg=NONE cterm=bold
      hi SpecialKey ctermfg=236 ctermbg=NONE cterm=reverse
      hi SpellBad ctermfg=61 ctermbg=NONE cterm=underline
      hi SpellCap ctermfg=61 ctermbg=NONE cterm=underline
      hi SpellLocal ctermfg=136 ctermbg=NONE cterm=underline
      hi SpellRare ctermfg=37 ctermbg=NONE cterm=underline
      hi Title ctermfg=243 ctermbg=NONE cterm=bold
    else " normal visibility
      hi CursorLineNr ctermfg=247 ctermbg=236 cterm=bold
      hi NonText ctermfg=246 ctermbg=NONE cterm=bold
      hi SpecialKey ctermfg=246 ctermbg=236 cterm=bold
      hi SpellBad ctermfg=61 ctermbg=NONE cterm=underline
      hi SpellCap ctermfg=61 ctermbg=NONE cterm=underline
      hi SpellLocal ctermfg=136 ctermbg=NONE cterm=underline
      hi SpellRare ctermfg=37 ctermbg=NONE cterm=underline
      hi Title ctermfg=166 ctermbg=NONE cterm=bold
    endif
    if s:termtrans
      hi CursorLineNr ctermbg=NONE
    endif
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor ctermfg=235 ctermbg=247 cterm=NONE
    else
      hi Cursor ctermfg=230 ctermbg=32 cterm=NONE
    endif
    if get(g:, 'solarized_diffmode', '') ==# 'high'
      hi DiffAdd ctermfg=106 ctermbg=NONE cterm=reverse
      hi DiffChange ctermfg=136 ctermbg=NONE cterm=reverse
      hi DiffDelete ctermfg=160 ctermbg=NONE cterm=reverse
      hi DiffText ctermfg=32 ctermbg=NONE cterm=reverse
    elseif get(g:, 'solarized_diffmode', '') ==# 'low'
      hi DiffAdd ctermfg=106 ctermbg=NONE cterm=NONE
      hi DiffChange ctermfg=136 ctermbg=NONE cterm=NONE
      hi DiffDelete ctermfg=160 ctermbg=NONE cterm=bold
      hi DiffText ctermfg=32 ctermbg=NONE cterm=NONE
    else " normal diffmode
      hi DiffAdd ctermfg=106 ctermbg=236 cterm=NONE
      hi DiffChange ctermfg=136 ctermbg=236 cterm=NONE
      hi DiffDelete ctermfg=160 ctermbg=236 cterm=bold
      hi DiffText ctermfg=32 ctermbg=236 cterm=NONE
    endif
    if get(g:, 'solarized_statusline', '') ==# 'low'
      hi StatusLine ctermfg=243 ctermbg=230 cterm=reverse
      hi StatusLineNC ctermfg=243 ctermbg=236 cterm=reverse
      hi TabLine ctermfg=243 ctermbg=236 cterm=reverse
      hi TabLineFill ctermfg=243 ctermbg=236 cterm=reverse
      hi TabLineSel ctermfg=247 ctermbg=230 cterm=reverse
      hi VertSplit ctermfg=236 ctermbg=243 cterm=NONE
    elseif get(g:, 'solarized_statusline', '') ==# 'flat'
      hi StatusLine ctermfg=236 ctermbg=230 cterm=reverse
      hi StatusLineNC ctermfg=236 ctermbg=254 cterm=reverse
      hi TabLineSel ctermfg=230 ctermbg=236 cterm=NONE
      hi TabLine ctermfg=243 ctermbg=236 cterm=NONE
      hi TabLineFill ctermfg=243 ctermbg=236 cterm=NONE
      hi VertSplit ctermfg=243 ctermbg=236 cterm=NONE
    else
      hi StatusLine ctermfg=247 ctermbg=236 cterm=reverse
      hi StatusLineNC ctermfg=243 ctermbg=236 cterm=reverse
      hi TabLine ctermfg=243 ctermbg=236 cterm=reverse
      hi TabLineFill ctermfg=243 ctermbg=236 cterm=reverse
      hi TabLineSel ctermfg=247 ctermbg=236 cterm=reverse
      hi VertSplit ctermfg=236 ctermbg=243 cterm=NONE
    endif
    hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE
    hi Conceal ctermfg=32 ctermbg=NONE cterm=NONE
    hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
    hi Directory ctermfg=32 ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=160 ctermbg=230 cterm=reverse
    hi IncSearch ctermfg=166 ctermbg=NONE cterm=standout
    hi MatchParen ctermfg=230 ctermbg=236 cterm=bold
    hi ModeMsg ctermfg=32 ctermbg=NONE cterm=NONE
    hi MoreMsg ctermfg=32 ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=254 ctermbg=236 cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=247 cterm=NONE
    hi PmenuSel ctermfg=230 ctermbg=243 cterm=NONE
    hi PmenuThumb ctermfg=NONE ctermbg=243 cterm=NONE
    hi Question ctermfg=37 ctermbg=NONE cterm=bold
    hi Search ctermfg=136 ctermbg=NONE cterm=reverse
    hi SignColumn ctermfg=247 ctermbg=NONE cterm=NONE
    hi Visual ctermfg=243 ctermbg=235 cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=236 cterm=reverse
    hi WarningMsg ctermfg=166 ctermbg=NONE cterm=bold
    hi WildMenu ctermfg=230 ctermbg=236 cterm=reverse
    hi Comment ctermfg=246 ctermbg=NONE cterm=italic
    hi Constant ctermfg=37 ctermbg=NONE cterm=NONE
    hi Error ctermfg=160 ctermbg=230 cterm=bold,reverse
    hi Identifier ctermfg=32 ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=166 ctermbg=NONE cterm=NONE
    hi Special ctermfg=166 ctermbg=NONE cterm=NONE
    hi Statement ctermfg=106 ctermbg=NONE cterm=NONE
    hi Todo ctermfg=162 ctermbg=NONE cterm=bold
    hi Type ctermfg=136 ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=61 ctermbg=NONE cterm=NONE
    hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=236 cterm=NONE
    hi ToolbarButton ctermfg=254 ctermbg=236 cterm=bold
    hi NormalMode ctermfg=247 ctermbg=230 cterm=reverse
    hi InsertMode ctermfg=37 ctermbg=230 cterm=reverse
    hi ReplaceMode ctermfg=166 ctermbg=230 cterm=reverse
    hi VisualMode ctermfg=162 ctermbg=230 cterm=reverse
    hi CommandMode ctermfg=162 ctermbg=230 cterm=reverse
    if !s:italics
      hi Comment cterm=NONE
    endif
    if has('nvim')
      hi! link TermCursor Cursor
      hi TermCursorNC ctermfg=235 ctermbg=243 cterm=NONE
    endif
    if !get(g:, 'solarized_extra_hi_groups', 0)
      unlet s:t_Co s:italics s:termtrans
      finish
    endif
    hi! link vimVar Identifier
    hi! link vimFunc Function
    hi! link vimUserFunc Function
    hi! link helpSpecial Special
    hi! link vimSet Normal
    hi! link vimSetEqual Normal
    hi vimCommentString ctermfg=61 ctermbg=NONE cterm=NONE
    hi vimCommand ctermfg=136 ctermbg=NONE cterm=NONE
    hi vimCmdSep ctermfg=32 ctermbg=NONE cterm=bold
    hi helpExample ctermfg=254 ctermbg=NONE cterm=NONE
    hi helpOption ctermfg=37 ctermbg=NONE cterm=NONE
    hi helpNote ctermfg=162 ctermbg=NONE cterm=NONE
    hi helpVim ctermfg=162 ctermbg=NONE cterm=NONE
    hi helpHyperTextJump ctermfg=32 ctermbg=NONE cterm=NONE
    hi helpHyperTextEntry ctermfg=106 ctermbg=NONE cterm=NONE
    hi vimIsCommand ctermfg=246 ctermbg=NONE cterm=NONE
    hi vimSynMtchOpt ctermfg=136 ctermbg=NONE cterm=NONE
    hi vimSynType ctermfg=37 ctermbg=NONE cterm=NONE
    hi vimHiLink ctermfg=32 ctermbg=NONE cterm=NONE
    hi vimHiGroup ctermfg=32 ctermbg=NONE cterm=NONE
    hi vimGroup ctermfg=32 ctermbg=NONE cterm=bold
    hi! link diffAdded Statement
    hi! link diffLine Identifier
    hi gitcommitComment ctermfg=243 ctermbg=NONE cterm=italic
    hi! link gitcommitUntracked gitcommitComment
    hi! link gitcommitDiscarded gitcommitComment
    hi! link gitcommitSelected gitcommitComment
    hi gitcommitUnmerged ctermfg=106 ctermbg=NONE cterm=bold
    hi gitcommitOnBranch ctermfg=243 ctermbg=NONE cterm=bold
    hi gitcommitBranch ctermfg=162 ctermbg=NONE cterm=bold
    hi! link gitcommitNoBranch gitcommitBranch
    hi gitcommitdiscardedtype ctermfg=160 ctermbg=NONE cterm=NONE
    hi gitcommitselectedtype ctermfg=106 ctermbg=NONE cterm=NONE
    hi gitcommitHeader ctermfg=243 ctermbg=NONE cterm=NONE
    hi gitcommitUntrackedFile ctermfg=37 ctermbg=NONE cterm=bold
    hi gitcommitDiscardedFile ctermfg=160 ctermbg=NONE cterm=bold
    hi gitcommitSelectedFile ctermfg=106 ctermbg=NONE cterm=bold
    hi gitcommitUnmergedFile ctermfg=136 ctermbg=NONE cterm=bold
    hi gitcommitFile ctermfg=247 ctermbg=NONE cterm=bold
    hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
    hi! link gitcommitSelectedArrow gitcommitSelectedFile
    hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
    hi htmlTag ctermfg=243 ctermbg=NONE cterm=NONE
    hi htmlEndTag ctermfg=243 ctermbg=NONE cterm=NONE
    hi htmlTagN ctermfg=254 ctermbg=NONE cterm=bold
    hi htmlTagName ctermfg=32 ctermbg=NONE cterm=bold
    hi htmlSpecialTagName ctermfg=32 ctermbg=NONE cterm=italic
    hi htmlArg ctermfg=246 ctermbg=NONE cterm=NONE
    hi javaScript ctermfg=136 ctermbg=NONE cterm=NONE
    hi! link jsFuncCall Function
    hi perlHereDoc ctermfg=254 ctermbg=NONE cterm=NONE
    hi perlVarPlain ctermfg=136 ctermbg=NONE cterm=NONE
    hi perlStatementFileDesc ctermfg=37 ctermbg=NONE cterm=NONE
    hi texstatement ctermfg=37 ctermbg=NONE cterm=NONE
    hi texmathzonex ctermfg=136 ctermbg=NONE cterm=NONE
    hi texmathmatcher ctermfg=136 ctermbg=NONE cterm=NONE
    hi texreflabel ctermfg=136 ctermbg=NONE cterm=NONE
    hi rubyDefine ctermfg=254 ctermbg=NONE cterm=bold
    hi! link rubySymbol Type
    hi rubyBoolean ctermfg=162 ctermbg=NONE cterm=NONE
    hi cPreCondit ctermfg=166 ctermbg=NONE cterm=NONE
    hi VarId ctermfg=32 ctermbg=NONE cterm=NONE
    hi ConId ctermfg=136 ctermbg=NONE cterm=NONE
    hi hsImport ctermfg=162 ctermbg=NONE cterm=NONE
    hi hsString ctermfg=246 ctermbg=NONE cterm=NONE
    hi hsStructure ctermfg=37 ctermbg=NONE cterm=NONE
    hi hs_hlFunctionName ctermfg=32 ctermbg=NONE cterm=NONE
    hi hsStatement ctermfg=37 ctermbg=NONE cterm=NONE
    hi hsImportLabel ctermfg=37 ctermbg=NONE cterm=NONE
    hi hs_OpFunctionName ctermfg=136 ctermbg=NONE cterm=NONE
    hi hs_DeclareFunction ctermfg=166 ctermbg=NONE cterm=NONE
    hi hsVarSym ctermfg=37 ctermbg=NONE cterm=NONE
    hi hsType ctermfg=136 ctermbg=NONE cterm=NONE
    hi hsTypedef ctermfg=37 ctermbg=NONE cterm=NONE
    hi hsModuleName ctermfg=106 ctermbg=NONE cterm=NONE
    hi! link hsImportParams Delimiter
    hi! link hsDelimTypeExport Delimiter
    hi! link hsModuleStartLabel hsStructure
    hi! link hsModuleWhereLabel hsModuleStartLabel
    hi hsNiceOperator ctermfg=37 ctermbg=NONE cterm=NONE
    hi hsniceoperator ctermfg=37 ctermbg=NONE cterm=NONE
    if !s:italics
      hi gitcommitComment cterm=NONE
      hi htmlSpecialTagName cterm=NONE
    endif
    let hs_highlight_boolean=1
    let hs_highlight_delimiters=1
    hi pandocTitleBlock ctermfg=32 ctermbg=NONE cterm=NONE
    hi pandocTitleBlockTitle ctermfg=32 ctermbg=NONE cterm=bold
    hi pandocTitleComment ctermfg=32 ctermbg=NONE cterm=bold
    hi pandocComment ctermfg=243 ctermbg=NONE cterm=italic
    hi pandocVerbatimBlock ctermfg=136 ctermbg=NONE cterm=NONE
    hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
    hi! link pandocCodeBlock pandocVerbatimBlock
    hi! link pandocCodeBlockDelim pandocVerbatimBlock
    hi pandocBlockQuote ctermfg=32 ctermbg=NONE cterm=NONE
    hi pandocBlockQuoteLeader1 ctermfg=32 ctermbg=NONE cterm=NONE
    hi pandocBlockQuoteLeader2 ctermfg=37 ctermbg=NONE cterm=NONE
    hi pandocBlockQuoteLeader3 ctermfg=136 ctermbg=NONE cterm=NONE
    hi pandocBlockQuoteLeader4 ctermfg=160 ctermbg=NONE cterm=NONE
    hi pandocBlockQuoteLeader5 ctermfg=247 ctermbg=NONE cterm=NONE
    hi pandocBlockQuoteLeader6 ctermfg=243 ctermbg=NONE cterm=NONE
    hi pandocListMarker ctermfg=162 ctermbg=NONE cterm=NONE
    hi pandocListReference ctermfg=162 ctermbg=NONE cterm=NONE
    hi pandocDefinitionBlock ctermfg=61 ctermbg=NONE cterm=NONE
    hi pandocDefinitionTerm ctermfg=61 ctermbg=NONE cterm=standout
    hi pandocDefinitionIndctr ctermfg=61 ctermbg=NONE cterm=bold
    hi pandocEmphasisDefinition ctermfg=61 ctermbg=NONE cterm=italic
    hi pandocEmphasisNestedDefinition ctermfg=61 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisDefinition ctermfg=61 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisNestedDefinition ctermfg=61 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisEmphasisDefinition ctermfg=61 ctermbg=NONE cterm=bold
    hi pandocStrikeoutDefinition ctermfg=61 ctermbg=NONE cterm=reverse
    hi pandocVerbatimInlineDefinition ctermfg=61 ctermbg=NONE cterm=NONE
    hi pandocSuperscriptDefinition ctermfg=61 ctermbg=NONE cterm=NONE
    hi pandocSubscriptDefinition ctermfg=61 ctermbg=NONE cterm=NONE
    hi pandocTable ctermfg=32 ctermbg=NONE cterm=NONE
    hi pandocTableStructure ctermfg=32 ctermbg=NONE cterm=NONE
    hi! link pandocTableStructureTop pandocTableStructre
    hi! link pandocTableStructureEnd pandocTableStructre
    hi pandocTableZebraLight ctermfg=32 ctermbg=235 cterm=NONE
    hi pandocTableZebraDark ctermfg=32 ctermbg=236 cterm=NONE
    hi pandocEmphasisTable ctermfg=32 ctermbg=NONE cterm=italic
    hi pandocEmphasisNestedTable ctermfg=32 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisTable ctermfg=32 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisNestedTable ctermfg=32 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisEmphasisTable ctermfg=32 ctermbg=NONE cterm=bold
    hi pandocStrikeoutTable ctermfg=32 ctermbg=NONE cterm=reverse
    hi pandocVerbatimInlineTable ctermfg=32 ctermbg=NONE cterm=NONE
    hi pandocSuperscriptTable ctermfg=32 ctermbg=NONE cterm=NONE
    hi pandocSubscriptTable ctermfg=32 ctermbg=NONE cterm=NONE
    hi pandocHeading ctermfg=166 ctermbg=NONE cterm=bold
    hi pandocHeadingMarker ctermfg=166 ctermbg=NONE cterm=bold
    hi pandocEmphasisHeading ctermfg=166 ctermbg=NONE cterm=bold
    hi pandocEmphasisNestedHeading ctermfg=166 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisHeading ctermfg=166 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisNestedHeading ctermfg=166 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisEmphasisHeading ctermfg=166 ctermbg=NONE cterm=bold
    hi pandocStrikeoutHeading ctermfg=166 ctermbg=NONE cterm=reverse
    hi pandocVerbatimInlineHeading ctermfg=166 ctermbg=NONE cterm=bold
    hi pandocSuperscriptHeading ctermfg=166 ctermbg=NONE cterm=bold
    hi pandocSubscriptHeading ctermfg=166 ctermbg=NONE cterm=bold
    hi pandocLinkDelim ctermfg=243 ctermbg=NONE cterm=NONE
    hi pandocLinkLabel ctermfg=32 ctermbg=NONE cterm=NONE
    hi pandocLinkText ctermfg=32 ctermbg=NONE cterm=NONE
    hi pandocLinkURL ctermfg=246 ctermbg=NONE cterm=NONE
    hi pandocLinkTitle ctermfg=246 ctermbg=NONE cterm=NONE
    hi pandocLinkTitleDelim ctermfg=243 ctermbg=NONE cterm=NONE
    hi pandocLinkDefinition ctermfg=37 ctermbg=NONE cterm=NONE
    hi pandocLinkDefinitionID ctermfg=32 ctermbg=NONE cterm=bold
    hi pandocImageCaption ctermfg=61 ctermbg=NONE cterm=bold
    hi pandocFootnoteLink ctermfg=106 ctermbg=NONE cterm=NONE
    hi pandocFootnoteDefLink ctermfg=106 ctermbg=NONE cterm=bold
    hi pandocFootnoteInline ctermfg=106 ctermbg=NONE cterm=bold
    hi pandocFootnote ctermfg=106 ctermbg=NONE cterm=NONE
    hi pandocCitationDelim ctermfg=162 ctermbg=NONE cterm=NONE
    hi pandocCitation ctermfg=162 ctermbg=NONE cterm=NONE
    hi pandocCitationID ctermfg=162 ctermbg=NONE cterm=NONE
    hi pandocCitationRef ctermfg=162 ctermbg=NONE cterm=NONE
    hi pandocStyleDelim ctermfg=243 ctermbg=NONE cterm=NONE
    hi pandocEmphasis ctermfg=247 ctermbg=NONE cterm=italic
    hi pandocEmphasisNested ctermfg=247 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasis ctermfg=247 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisNested ctermfg=247 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisEmphasis ctermfg=247 ctermbg=NONE cterm=bold
    hi pandocStrikeout ctermfg=243 ctermbg=NONE cterm=reverse
    hi pandocVerbatimInline ctermfg=136 ctermbg=NONE cterm=NONE
    hi pandocSuperscript ctermfg=61 ctermbg=NONE cterm=NONE
    hi pandocSubscript ctermfg=61 ctermbg=NONE cterm=NONE
    hi pandocRule ctermfg=32 ctermbg=NONE cterm=bold
    hi pandocRuleLine ctermfg=32 ctermbg=NONE cterm=bold
    hi pandocEscapePair ctermfg=160 ctermbg=NONE cterm=bold
    hi pandocCitationRef ctermfg=162 ctermbg=NONE cterm=NONE
    hi pandocNonBreakingSpace ctermfg=160 ctermbg=NONE cterm=reverse
    hi! link pandocEscapedCharacter pandocEscapePair
    hi! link pandocLineBreak pandocEscapePair
    hi pandocMetadataDelim ctermfg=243 ctermbg=NONE cterm=NONE
    hi pandocMetadata ctermfg=32 ctermbg=NONE cterm=NONE
    hi pandocMetadataKey ctermfg=32 ctermbg=NONE cterm=NONE
    hi pandocMetadata ctermfg=32 ctermbg=NONE cterm=bold
    hi! link pandocMetadataTitle pandocMetadata
    if !s:italics
      hi pandocComment cterm=NONE
      hi pandocEmphasisDefinition cterm=NONE
      hi pandocEmphasisTable cterm=NONE
      hi pandocEmphasis cterm=NONE
    endif
    if get(g:, 'solarized_statusline', '') ==# 'flat'
      hi ALEErrorSign ctermfg=160 ctermbg=NONE cterm=bold
      hi ALEInfoSign ctermfg=37 ctermbg=NONE cterm=bold
      hi ALEWarningSign ctermfg=136 ctermbg=NONE cterm=bold
      hi ALEErrorSignLineNr ctermfg=160 ctermbg=NONE cterm=NONE
      hi ALEInfoSignLineNr ctermfg=37 ctermbg=NONE cterm=NONE
      hi ALEWarningSignLineNr ctermfg=136 ctermbg=NONE cterm=NONE
    else
      if get(g:, 'ale_sign_highlight_linenrs', '') ==# 1
        hi ALEErrorSign ctermfg=236 ctermbg=160 cterm=bold
        hi ALEInfoSign ctermfg=236 ctermbg=37 cterm=bold
        hi ALEWarningSign ctermfg=236 ctermbg=136 cterm=bold
      else
        hi ALEErrorSign ctermfg=160 ctermbg=236 cterm=bold
        hi ALEInfoSign ctermfg=37 ctermbg=236 cterm=bold
        hi ALEWarningSign ctermfg=136 ctermbg=236 cterm=bold
      endif
      hi ALEErrorSignLineNr ctermfg=236 ctermbg=160 cterm=NONE
      hi ALEInfoSignLineNr ctermfg=236 ctermbg=37 cterm=NONE
      hi ALEWarningSignLineNr ctermfg=236 ctermbg=136 cterm=NONE
    endif
    hi ALEError ctermfg=160 ctermbg=NONE cterm=undercurl
    hi ALEErrorLine ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ALEInfo ctermfg=37 ctermbg=NONE cterm=undercurl
    hi ALEInfoLine ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ALEWarning ctermfg=136 ctermbg=NONE cterm=undercurl
    hi ALEWarningLine ctermfg=NONE ctermbg=NONE cterm=NONE
    hi! link ALEStyleError ALEError
    hi! link ALEStyleErrorSign ALEErrorSign
    hi! link ALEStyleErrorSignLineNr ALEErrorSignLineNr
    hi! link ALEStyleWarning ALEWarning
    hi! link ALEStyleWarningSign ALEWarningSign
    hi! link ALEStyleWarningSignLineNr ALEWarningSignLineNr
    unlet s:termtrans
    unlet s:t_Co s:italics
    finish
  endif
  " Light background
  if s:termtrans
    hi Normal ctermfg=236 ctermbg=NONE cterm=NONE
    hi FoldColumn ctermfg=242 ctermbg=NONE cterm=NONE
    hi Folded ctermfg=242 ctermbg=NONE cterm=bold
    hi LineNr ctermfg=247 ctermbg=NONE cterm=NONE
    hi Terminal ctermfg=fg ctermbg=NONE cterm=NONE
  else
    hi Normal ctermfg=236 ctermbg=230 cterm=NONE
    hi FoldColumn ctermfg=242 ctermbg=254 cterm=NONE
    hi Folded ctermfg=242 ctermbg=254 cterm=bold
    hi LineNr ctermfg=247 ctermbg=254 cterm=NONE
    hi Terminal ctermfg=fg ctermbg=230 cterm=NONE
  endif
  if get(g:, 'solarized_visibility', '') ==# 'high'
    hi CursorLineNr ctermfg=160 ctermbg=254 cterm=bold
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor ctermfg=230 ctermbg=242 cterm=NONE
    else
      hi Cursor ctermfg=230 ctermbg=160 cterm=NONE
    endif
    hi MatchParen ctermfg=230 ctermbg=66 cterm=bold
    hi NonText ctermfg=160 ctermbg=NONE cterm=bold
    hi SpecialKey ctermfg=160 ctermbg=NONE cterm=reverse
    hi SpellBad ctermfg=162 ctermbg=230 cterm=reverse,underline
    hi SpellCap ctermfg=162 ctermbg=230 cterm=reverse,underline
    hi SpellLocal ctermfg=136 ctermbg=230 cterm=reverse,underline
    hi SpellRare ctermfg=37 ctermbg=230 cterm=reverse,underline
    hi Title ctermfg=166 ctermbg=NONE cterm=bold
  elseif get(g:, 'solarized_visibility', '') ==# 'low'
    hi CursorLineNr ctermfg=247 ctermbg=254 cterm=bold
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor ctermfg=230 ctermbg=242 cterm=NONE
    else
      hi Cursor ctermfg=230 ctermbg=166 cterm=NONE
    endif
    hi MatchParen ctermfg=160 ctermbg=254 cterm=bold,underline
    hi NonText ctermfg=254 ctermbg=NONE cterm=bold
    hi SpecialKey ctermfg=254 ctermbg=NONE cterm=bold
    hi SpellBad ctermfg=162 ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=162 ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=136 ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=37 ctermbg=NONE cterm=underline
    hi Title ctermfg=247 ctermbg=NONE cterm=bold
  else
    hi CursorLineNr ctermfg=242 ctermbg=254 cterm=bold
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor ctermfg=230 ctermbg=242 cterm=NONE
    else
      hi Cursor ctermfg=230 ctermbg=166 cterm=NONE
    endif
    hi MatchParen ctermfg=160 ctermbg=254 cterm=bold,underline
    hi NonText ctermfg=66 ctermbg=NONE cterm=bold
    hi SpecialKey ctermfg=66 ctermbg=254 cterm=bold
    hi SpellBad ctermfg=162 ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=162 ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=136 ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=37 ctermbg=NONE cterm=underline
    hi Title ctermfg=166 ctermbg=NONE cterm=bold
  endif
  if s:termtrans
    hi CursorLineNr ctermbg=NONE
  endif
  if get(g:, 'solarized_diffmode', '') ==# 'high'
    hi DiffAdd ctermfg=106 ctermbg=NONE cterm=reverse
    hi DiffChange ctermfg=136 ctermbg=NONE cterm=reverse
    hi DiffDelete ctermfg=160 ctermbg=NONE cterm=reverse
    hi DiffText ctermfg=32 ctermbg=NONE cterm=reverse
  elseif get(g:, 'solarized_diffmode', '') ==# 'low'
    hi DiffAdd ctermfg=106 ctermbg=NONE cterm=NONE
    hi DiffChange ctermfg=136 ctermbg=NONE cterm=NONE
    hi DiffDelete ctermfg=160 ctermbg=NONE cterm=bold
    hi DiffText ctermfg=32 ctermbg=NONE cterm=NONE
  else " normal diffmode
    hi DiffAdd ctermfg=106 ctermbg=254 cterm=NONE
    hi DiffChange ctermfg=136 ctermbg=254 cterm=NONE
    hi DiffDelete ctermfg=160 ctermbg=254 cterm=bold
    hi DiffText ctermfg=32 ctermbg=254 cterm=NONE
  endif
  if get(g:, 'solarized_statusline', '') ==# 'low'
    hi StatusLine ctermfg=247 ctermbg=230 cterm=reverse
    hi StatusLineNC ctermfg=247 ctermbg=236 cterm=reverse
    hi TabLine ctermfg=247 ctermbg=236 cterm=reverse
    hi TabLineFill ctermfg=247 ctermbg=236 cterm=reverse
    hi TabLineSel ctermfg=236 ctermbg=230 cterm=reverse
    hi VertSplit ctermfg=236 ctermbg=247 cterm=NONE
    hi WildMenu ctermfg=236 ctermbg=230 cterm=reverse
  elseif get(g:, 'solarized_statusline', '') ==# 'flat'
    hi StatusLine ctermfg=254 ctermbg=235 cterm=reverse
    hi StatusLineNC ctermfg=254 ctermbg=236 cterm=reverse
    hi TabLineSel ctermfg=235 ctermbg=254 cterm=NONE
    hi TabLine ctermfg=247 ctermbg=254 cterm=NONE
    hi TabLineFill ctermfg=247 ctermbg=254 cterm=NONE
    hi VertSplit ctermfg=247 ctermbg=254 cterm=NONE
    hi WildMenu ctermfg=242 ctermbg=230 cterm=reverse
  else
    hi StatusLine ctermfg=236 ctermbg=254 cterm=reverse
    hi StatusLineNC ctermfg=66 ctermbg=254 cterm=reverse
    hi TabLine ctermfg=66 ctermbg=254 cterm=reverse
    hi TabLineFill ctermfg=66 ctermbg=254 cterm=reverse
    hi TabLineSel ctermfg=236 ctermbg=254 cterm=reverse
    hi VertSplit ctermfg=236 ctermbg=247 cterm=NONE
    hi WildMenu ctermfg=66 ctermbg=230 cterm=reverse
  endif
  hi ColorColumn ctermfg=NONE ctermbg=254 cterm=NONE
  hi Conceal ctermfg=32 ctermbg=NONE cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=254 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=254 cterm=NONE
  hi Directory ctermfg=32 ctermbg=NONE cterm=NONE
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ErrorMsg ctermfg=160 ctermbg=230 cterm=reverse
  hi IncSearch ctermfg=166 ctermbg=NONE cterm=standout
  hi ModeMsg ctermfg=32 ctermbg=NONE cterm=NONE
  hi MoreMsg ctermfg=32 ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=236 ctermbg=254 cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=236 cterm=NONE
  hi PmenuSel ctermfg=235 ctermbg=247 cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=66 cterm=NONE
  hi Question ctermfg=37 ctermbg=NONE cterm=bold
  hi Search ctermfg=136 ctermbg=NONE cterm=reverse
  hi SignColumn ctermfg=242 ctermbg=NONE cterm=NONE
  hi Visual ctermfg=247 ctermbg=230 cterm=reverse
  hi VisualNOS ctermfg=NONE ctermbg=254 cterm=reverse
  hi WarningMsg ctermfg=166 ctermbg=NONE cterm=bold
  hi Comment ctermfg=66 ctermbg=NONE cterm=italic
  hi Constant ctermfg=37 ctermbg=NONE cterm=NONE
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  hi Error ctermfg=160 ctermbg=230 cterm=bold,reverse
  hi Identifier ctermfg=32 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=166 ctermbg=NONE cterm=NONE
  hi Special ctermfg=166 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=106 ctermbg=NONE cterm=NONE
  hi Todo ctermfg=162 ctermbg=NONE cterm=bold
  hi ToolbarButton ctermfg=236 ctermbg=254 cterm=bold
  hi ToolbarLine ctermfg=NONE ctermbg=254 cterm=NONE
  hi Type ctermfg=136 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=61 ctermbg=NONE cterm=NONE
  hi NormalMode ctermfg=236 ctermbg=230 cterm=reverse
  hi InsertMode ctermfg=37 ctermbg=230 cterm=reverse
  hi ReplaceMode ctermfg=166 ctermbg=230 cterm=reverse
  hi VisualMode ctermfg=162 ctermbg=230 cterm=reverse
  hi CommandMode ctermfg=162 ctermbg=230 cterm=reverse
  if !s:italics
    hi Comment cterm=NONE
  endif
  if has('nvim')
    hi! link TermCursor Cursor
    hi TermCursorNC ctermfg=230 ctermbg=247 cterm=NONE
  endif
  if !get(g:, 'solarized_extra_hi_groups', 0)
    unlet s:t_Co s:italics s:termtrans
    finish
  endif
  hi! link vimVar Identifier
  hi! link vimFunc Function
  hi! link vimUserFunc Function
  hi! link helpSpecial Special
  hi! link vimSet Normal
  hi! link vimSetEqual Normal
  hi vimCommentString ctermfg=61 ctermbg=NONE cterm=NONE
  hi vimCommand ctermfg=136 ctermbg=NONE cterm=NONE
  hi vimCmdSep ctermfg=32 ctermbg=NONE cterm=bold
  hi helpExample ctermfg=236 ctermbg=NONE cterm=NONE
  hi helpOption ctermfg=37 ctermbg=NONE cterm=NONE
  hi helpNote ctermfg=162 ctermbg=NONE cterm=NONE
  hi helpVim ctermfg=162 ctermbg=NONE cterm=NONE
  hi helpHyperTextJump ctermfg=32 ctermbg=NONE cterm=NONE
  hi helpHyperTextEntry ctermfg=106 ctermbg=NONE cterm=NONE
  hi vimIsCommand ctermfg=66 ctermbg=NONE cterm=NONE
  hi vimSynMtchOpt ctermfg=136 ctermbg=NONE cterm=NONE
  hi vimSynType ctermfg=37 ctermbg=NONE cterm=NONE
  hi vimHiLink ctermfg=32 ctermbg=NONE cterm=NONE
  hi vimHiGroup ctermfg=32 ctermbg=NONE cterm=NONE
  hi vimGroup ctermfg=32 ctermbg=NONE cterm=bold
  hi! link diffAdded Statement
  hi! link diffLine Identifier
  hi gitcommitComment ctermfg=247 ctermbg=NONE cterm=italic
  hi! link gitcommitUntracked gitcommitComment
  hi! link gitcommitDiscarded gitcommitComment
  hi! link gitcommitSelected gitcommitComment
  hi gitcommitUnmerged ctermfg=106 ctermbg=NONE cterm=bold
  hi gitcommitOnBranch ctermfg=247 ctermbg=NONE cterm=bold
  hi gitcommitBranch ctermfg=162 ctermbg=NONE cterm=bold
  hi! link gitcommitNoBranch gitcommitBranch
  hi gitcommitdiscardedtype ctermfg=160 ctermbg=NONE cterm=NONE
  hi gitcommitselectedtype ctermfg=106 ctermbg=NONE cterm=NONE
  hi gitcommitHeader ctermfg=247 ctermbg=NONE cterm=NONE
  hi gitcommitUntrackedFile ctermfg=37 ctermbg=NONE cterm=bold
  hi gitcommitDiscardedFile ctermfg=160 ctermbg=NONE cterm=bold
  hi gitcommitSelectedFile ctermfg=106 ctermbg=NONE cterm=bold
  hi gitcommitUnmergedFile ctermfg=136 ctermbg=NONE cterm=bold
  hi gitcommitFile ctermfg=242 ctermbg=NONE cterm=bold
  hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
  hi! link gitcommitSelectedArrow gitcommitSelectedFile
  hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
  hi htmlTag ctermfg=247 ctermbg=NONE cterm=NONE
  hi htmlEndTag ctermfg=247 ctermbg=NONE cterm=NONE
  hi htmlTagN ctermfg=236 ctermbg=NONE cterm=bold
  hi htmlTagName ctermfg=32 ctermbg=NONE cterm=bold
  hi htmlSpecialTagName ctermfg=32 ctermbg=NONE cterm=italic
  hi htmlArg ctermfg=66 ctermbg=NONE cterm=NONE
  hi javaScript ctermfg=136 ctermbg=NONE cterm=NONE
  hi! link jsFuncCall Function
  hi perlHereDoc ctermfg=236 ctermbg=NONE cterm=NONE
  hi perlVarPlain ctermfg=136 ctermbg=NONE cterm=NONE
  hi perlStatementFileDesc ctermfg=37 ctermbg=NONE cterm=NONE
  hi texstatement ctermfg=37 ctermbg=NONE cterm=NONE
  hi texmathzonex ctermfg=136 ctermbg=NONE cterm=NONE
  hi texmathmatcher ctermfg=136 ctermbg=NONE cterm=NONE
  hi texreflabel ctermfg=136 ctermbg=NONE cterm=NONE
  hi rubyDefine ctermfg=236 ctermbg=NONE cterm=bold
  hi! link rubySymbol Type
  hi rubyBoolean ctermfg=162 ctermbg=NONE cterm=NONE
  hi cPreCondit ctermfg=166 ctermbg=NONE cterm=NONE
  hi VarId ctermfg=32 ctermbg=NONE cterm=NONE
  hi ConId ctermfg=136 ctermbg=NONE cterm=NONE
  hi hsImport ctermfg=162 ctermbg=NONE cterm=NONE
  hi hsString ctermfg=66 ctermbg=NONE cterm=NONE
  hi hsStructure ctermfg=37 ctermbg=NONE cterm=NONE
  hi hs_hlFunctionName ctermfg=32 ctermbg=NONE cterm=NONE
  hi hsStatement ctermfg=37 ctermbg=NONE cterm=NONE
  hi hsImportLabel ctermfg=37 ctermbg=NONE cterm=NONE
  hi hs_OpFunctionName ctermfg=136 ctermbg=NONE cterm=NONE
  hi hs_DeclareFunction ctermfg=166 ctermbg=NONE cterm=NONE
  hi hsVarSym ctermfg=37 ctermbg=NONE cterm=NONE
  hi hsType ctermfg=136 ctermbg=NONE cterm=NONE
  hi hsTypedef ctermfg=37 ctermbg=NONE cterm=NONE
  hi hsModuleName ctermfg=106 ctermbg=NONE cterm=NONE
  hi! link hsImportParams Delimiter
  hi! link hsDelimTypeExport Delimiter
  hi! link hsModuleStartLabel hsStructure
  hi! link hsModuleWhereLabel hsModuleStartLabel
  hi hsNiceOperator ctermfg=37 ctermbg=NONE cterm=NONE
  hi hsniceoperator ctermfg=37 ctermbg=NONE cterm=NONE
  if !s:italics
    hi gitcommitComment cterm=NONE
    hi htmlSpecialTagName cterm=NONE
  endif
  let hs_highlight_boolean=1
  let hs_highlight_delimiters=1
  hi pandocTitleBlock ctermfg=32 ctermbg=NONE cterm=NONE
  hi pandocTitleBlockTitle ctermfg=32 ctermbg=NONE cterm=bold
  hi pandocTitleComment ctermfg=32 ctermbg=NONE cterm=bold
  hi pandocComment ctermfg=247 ctermbg=NONE cterm=italic
  hi pandocVerbatimBlock ctermfg=136 ctermbg=NONE cterm=NONE
  hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
  hi! link pandocCodeBlock pandocVerbatimBlock
  hi! link pandocCodeBlockDelim pandocVerbatimBlock
  hi pandocBlockQuote ctermfg=32 ctermbg=NONE cterm=NONE
  hi pandocBlockQuoteLeader1 ctermfg=32 ctermbg=NONE cterm=NONE
  hi pandocBlockQuoteLeader2 ctermfg=37 ctermbg=NONE cterm=NONE
  hi pandocBlockQuoteLeader3 ctermfg=136 ctermbg=NONE cterm=NONE
  hi pandocBlockQuoteLeader4 ctermfg=160 ctermbg=NONE cterm=NONE
  hi pandocBlockQuoteLeader5 ctermfg=242 ctermbg=NONE cterm=NONE
  hi pandocBlockQuoteLeader6 ctermfg=247 ctermbg=NONE cterm=NONE
  hi pandocListMarker ctermfg=162 ctermbg=NONE cterm=NONE
  hi pandocListReference ctermfg=162 ctermbg=NONE cterm=NONE
  hi pandocDefinitionBlock ctermfg=61 ctermbg=NONE cterm=NONE
  hi pandocDefinitionTerm ctermfg=61 ctermbg=NONE cterm=standout
  hi pandocDefinitionIndctr ctermfg=61 ctermbg=NONE cterm=bold
  hi pandocEmphasisDefinition ctermfg=61 ctermbg=NONE cterm=italic
  hi pandocEmphasisNestedDefinition ctermfg=61 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisDefinition ctermfg=61 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisNestedDefinition ctermfg=61 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisEmphasisDefinition ctermfg=61 ctermbg=NONE cterm=bold
  hi pandocStrikeoutDefinition ctermfg=61 ctermbg=NONE cterm=reverse
  hi pandocVerbatimInlineDefinition ctermfg=61 ctermbg=NONE cterm=NONE
  hi pandocSuperscriptDefinition ctermfg=61 ctermbg=NONE cterm=NONE
  hi pandocSubscriptDefinition ctermfg=61 ctermbg=NONE cterm=NONE
  hi pandocTable ctermfg=32 ctermbg=NONE cterm=NONE
  hi pandocTableStructure ctermfg=32 ctermbg=NONE cterm=NONE
  hi! link pandocTableStructureTop pandocTableStructre
  hi! link pandocTableStructureEnd pandocTableStructre
  hi pandocTableZebraLight ctermfg=32 ctermbg=230 cterm=NONE
  hi pandocTableZebraDark ctermfg=32 ctermbg=254 cterm=NONE
  hi pandocEmphasisTable ctermfg=32 ctermbg=NONE cterm=italic
  hi pandocEmphasisNestedTable ctermfg=32 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisTable ctermfg=32 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisNestedTable ctermfg=32 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisEmphasisTable ctermfg=32 ctermbg=NONE cterm=bold
  hi pandocStrikeoutTable ctermfg=32 ctermbg=NONE cterm=reverse
  hi pandocVerbatimInlineTable ctermfg=32 ctermbg=NONE cterm=NONE
  hi pandocSuperscriptTable ctermfg=32 ctermbg=NONE cterm=NONE
  hi pandocSubscriptTable ctermfg=32 ctermbg=NONE cterm=NONE
  hi pandocHeading ctermfg=166 ctermbg=NONE cterm=bold
  hi pandocHeadingMarker ctermfg=166 ctermbg=NONE cterm=bold
  hi pandocEmphasisHeading ctermfg=166 ctermbg=NONE cterm=bold
  hi pandocEmphasisNestedHeading ctermfg=166 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisHeading ctermfg=166 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisNestedHeading ctermfg=166 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisEmphasisHeading ctermfg=166 ctermbg=NONE cterm=bold
  hi pandocStrikeoutHeading ctermfg=166 ctermbg=NONE cterm=reverse
  hi pandocVerbatimInlineHeading ctermfg=166 ctermbg=NONE cterm=bold
  hi pandocSuperscriptHeading ctermfg=166 ctermbg=NONE cterm=bold
  hi pandocSubscriptHeading ctermfg=166 ctermbg=NONE cterm=bold
  hi pandocLinkDelim ctermfg=247 ctermbg=NONE cterm=NONE
  hi pandocLinkLabel ctermfg=32 ctermbg=NONE cterm=NONE
  hi pandocLinkText ctermfg=32 ctermbg=NONE cterm=NONE
  hi pandocLinkURL ctermfg=66 ctermbg=NONE cterm=NONE
  hi pandocLinkTitle ctermfg=66 ctermbg=NONE cterm=NONE
  hi pandocLinkTitleDelim ctermfg=247 ctermbg=NONE cterm=NONE
  hi pandocLinkDefinition ctermfg=37 ctermbg=NONE cterm=NONE
  hi pandocLinkDefinitionID ctermfg=32 ctermbg=NONE cterm=bold
  hi pandocImageCaption ctermfg=61 ctermbg=NONE cterm=bold
  hi pandocFootnoteLink ctermfg=106 ctermbg=NONE cterm=NONE
  hi pandocFootnoteDefLink ctermfg=106 ctermbg=NONE cterm=bold
  hi pandocFootnoteInline ctermfg=106 ctermbg=NONE cterm=bold
  hi pandocFootnote ctermfg=106 ctermbg=NONE cterm=NONE
  hi pandocCitationDelim ctermfg=162 ctermbg=NONE cterm=NONE
  hi pandocCitation ctermfg=162 ctermbg=NONE cterm=NONE
  hi pandocCitationID ctermfg=162 ctermbg=NONE cterm=NONE
  hi pandocCitationRef ctermfg=162 ctermbg=NONE cterm=NONE
  hi pandocStyleDelim ctermfg=247 ctermbg=NONE cterm=NONE
  hi pandocEmphasis ctermfg=242 ctermbg=NONE cterm=italic
  hi pandocEmphasisNested ctermfg=242 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasis ctermfg=242 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisNested ctermfg=242 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisEmphasis ctermfg=242 ctermbg=NONE cterm=bold
  hi pandocStrikeout ctermfg=247 ctermbg=NONE cterm=reverse
  hi pandocVerbatimInline ctermfg=136 ctermbg=NONE cterm=NONE
  hi pandocSuperscript ctermfg=61 ctermbg=NONE cterm=NONE
  hi pandocSubscript ctermfg=61 ctermbg=NONE cterm=NONE
  hi pandocRule ctermfg=32 ctermbg=NONE cterm=bold
  hi pandocRuleLine ctermfg=32 ctermbg=NONE cterm=bold
  hi pandocEscapePair ctermfg=160 ctermbg=NONE cterm=bold
  hi pandocCitationRef ctermfg=162 ctermbg=NONE cterm=NONE
  hi pandocNonBreakingSpace ctermfg=160 ctermbg=NONE cterm=reverse
  hi! link pandocEscapedCharacter pandocEscapePair
  hi! link pandocLineBreak pandocEscapePair
  hi pandocMetadataDelim ctermfg=247 ctermbg=NONE cterm=NONE
  hi pandocMetadata ctermfg=32 ctermbg=NONE cterm=NONE
  hi pandocMetadataKey ctermfg=32 ctermbg=NONE cterm=NONE
  hi pandocMetadata ctermfg=32 ctermbg=NONE cterm=bold
  hi! link pandocMetadataTitle pandocMetadata
  if !s:italics
    hi pandocComment cterm=NONE
    hi pandocEmphasisDefinition cterm=NONE
    hi pandocEmphasisTable cterm=NONE
    hi pandocEmphasis cterm=NONE
  endif
  if get(g:, 'solarized_statusline', '') ==# 'flat'
    hi ALEErrorSign ctermfg=160 ctermbg=NONE cterm=bold
    hi ALEInfoSign ctermfg=37 ctermbg=NONE cterm=bold
    hi ALEWarningSign ctermfg=136 ctermbg=NONE cterm=bold
    hi ALEErrorSignLineNr ctermfg=160 ctermbg=NONE cterm=NONE
    hi ALEInfoSignLineNr ctermfg=37 ctermbg=NONE cterm=NONE
    hi ALEWarningSignLineNr ctermfg=136 ctermbg=NONE cterm=NONE
  else
    if get(g:, 'ale_sign_highlight_linenrs', '') ==# 1
      hi ALEErrorSign ctermfg=254 ctermbg=160 cterm=bold
      hi ALEInfoSign ctermfg=254 ctermbg=37 cterm=bold
      hi ALEWarningSign ctermfg=254 ctermbg=136 cterm=bold
    else
      hi ALEErrorSign ctermfg=160 ctermbg=254 cterm=bold
      hi ALEInfoSign ctermfg=37 ctermbg=254 cterm=bold
      hi ALEWarningSign ctermfg=136 ctermbg=254 cterm=bold
    endif
    hi ALEErrorSignLineNr ctermfg=254 ctermbg=160 cterm=NONE
    hi ALEInfoSignLineNr ctermfg=254 ctermbg=37 cterm=NONE
    hi ALEWarningSignLineNr ctermfg=254 ctermbg=136 cterm=NONE
  endif
  hi ALEError ctermfg=160 ctermbg=NONE cterm=undercurl
  hi ALEErrorLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ALEInfo ctermfg=37 ctermbg=NONE cterm=undercurl
  hi ALEInfoLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ALEWarning ctermfg=136 ctermbg=NONE cterm=undercurl
  hi ALEWarningLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi! link ALEStyleError ALEError
  hi! link ALEStyleErrorSign ALEErrorSign
  hi! link ALEStyleErrorSignLineNr ALEErrorSignLineNr
  hi! link ALEStyleWarning ALEWarning
  hi! link ALEStyleWarningSign ALEWarningSign
  hi! link ALEStyleWarningSignLineNr ALEWarningSignLineNr
  unlet s:termtrans
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 16
  if &background ==# 'dark'
    if s:termtrans
      hi Normal ctermfg=7 ctermbg=NONE cterm=NONE
      hi FoldColumn ctermfg=fg ctermbg=NONE cterm=NONE
      hi Folded ctermfg=fg ctermbg=NONE cterm=bold
      hi LineNr ctermfg=11 ctermbg=NONE cterm=NONE
      hi Terminal ctermfg=fg ctermbg=NONE cterm=NONE
    else
      hi Normal ctermfg=7 ctermbg=8 cterm=NONE
      hi FoldColumn ctermfg=14 ctermbg=0 cterm=NONE
      hi Folded ctermfg=14 ctermbg=0 cterm=bold
      hi LineNr ctermfg=11 ctermbg=0 cterm=NONE
      hi Terminal ctermfg=fg ctermbg=8 cterm=NONE
    endif
    if get(g:, 'solarized_visibility', '') ==# 'high'
      hi CursorLineNr ctermfg=9 ctermbg=0 cterm=bold
      hi NonText ctermfg=9 ctermbg=NONE cterm=bold
      hi SpecialKey ctermfg=9 ctermbg=NONE cterm=reverse
      hi SpellBad ctermfg=13 ctermbg=15 cterm=reverse,underline
      hi SpellCap ctermfg=13 ctermbg=15 cterm=reverse,underline
      hi SpellLocal ctermfg=3 ctermbg=15 cterm=reverse,underline
      hi SpellRare ctermfg=6 ctermbg=15 cterm=reverse,underline
      hi Title ctermfg=3 ctermbg=NONE cterm=bold
    elseif get(g:, 'solarized_visibility', '') ==# 'low'
      hi CursorLineNr ctermfg=11 ctermbg=0 cterm=bold
      hi NonText ctermfg=0 ctermbg=NONE cterm=bold
      hi SpecialKey ctermfg=0 ctermbg=NONE cterm=reverse
      hi SpellBad ctermfg=13 ctermbg=NONE cterm=underline
      hi SpellCap ctermfg=13 ctermbg=NONE cterm=underline
      hi SpellLocal ctermfg=3 ctermbg=NONE cterm=underline
      hi SpellRare ctermfg=6 ctermbg=NONE cterm=underline
      hi Title ctermfg=11 ctermbg=NONE cterm=bold
    else " normal visibility
      hi CursorLineNr ctermfg=14 ctermbg=0 cterm=bold
      hi NonText ctermfg=12 ctermbg=NONE cterm=bold
      hi SpecialKey ctermfg=12 ctermbg=0 cterm=bold
      hi SpellBad ctermfg=13 ctermbg=NONE cterm=underline
      hi SpellCap ctermfg=13 ctermbg=NONE cterm=underline
      hi SpellLocal ctermfg=3 ctermbg=NONE cterm=underline
      hi SpellRare ctermfg=6 ctermbg=NONE cterm=underline
      hi Title ctermfg=9 ctermbg=NONE cterm=bold
    endif
    if s:termtrans
      hi CursorLineNr ctermbg=NONE
    endif
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor ctermfg=8 ctermbg=14 cterm=NONE
    else
      hi Cursor ctermfg=15 ctermbg=4 cterm=NONE
    endif
    if get(g:, 'solarized_diffmode', '') ==# 'high'
      hi DiffAdd ctermfg=2 ctermbg=NONE cterm=reverse
      hi DiffChange ctermfg=3 ctermbg=NONE cterm=reverse
      hi DiffDelete ctermfg=1 ctermbg=NONE cterm=reverse
      hi DiffText ctermfg=4 ctermbg=NONE cterm=reverse
    elseif get(g:, 'solarized_diffmode', '') ==# 'low'
      hi DiffAdd ctermfg=2 ctermbg=NONE cterm=NONE
      hi DiffChange ctermfg=3 ctermbg=NONE cterm=NONE
      hi DiffDelete ctermfg=1 ctermbg=NONE cterm=bold
      hi DiffText ctermfg=4 ctermbg=NONE cterm=NONE
    else " normal diffmode
      hi DiffAdd ctermfg=2 ctermbg=0 cterm=NONE
      hi DiffChange ctermfg=3 ctermbg=0 cterm=NONE
      hi DiffDelete ctermfg=1 ctermbg=0 cterm=bold
      hi DiffText ctermfg=4 ctermbg=0 cterm=NONE
    endif
    if get(g:, 'solarized_statusline', '') ==# 'low'
      hi StatusLine ctermfg=11 ctermbg=15 cterm=reverse
      hi StatusLineNC ctermfg=11 ctermbg=0 cterm=reverse
      hi TabLine ctermfg=11 ctermbg=0 cterm=reverse
      hi TabLineFill ctermfg=11 ctermbg=0 cterm=reverse
      hi TabLineSel ctermfg=14 ctermbg=15 cterm=reverse
      hi VertSplit ctermfg=0 ctermbg=11 cterm=NONE
    elseif get(g:, 'solarized_statusline', '') ==# 'flat'
      hi StatusLine ctermfg=0 ctermbg=15 cterm=reverse
      hi StatusLineNC ctermfg=0 ctermbg=7 cterm=reverse
      hi TabLineSel ctermfg=15 ctermbg=0 cterm=NONE
      hi TabLine ctermfg=11 ctermbg=0 cterm=NONE
      hi TabLineFill ctermfg=11 ctermbg=0 cterm=NONE
      hi VertSplit ctermfg=11 ctermbg=0 cterm=NONE
    else
      hi StatusLine ctermfg=14 ctermbg=0 cterm=reverse
      hi StatusLineNC ctermfg=11 ctermbg=0 cterm=reverse
      hi TabLine ctermfg=11 ctermbg=0 cterm=reverse
      hi TabLineFill ctermfg=11 ctermbg=0 cterm=reverse
      hi TabLineSel ctermfg=14 ctermbg=0 cterm=reverse
      hi VertSplit ctermfg=0 ctermbg=11 cterm=NONE
    endif
    hi ColorColumn ctermfg=NONE ctermbg=0 cterm=NONE
    hi Conceal ctermfg=4 ctermbg=NONE cterm=NONE
    hi CursorColumn ctermfg=NONE ctermbg=0 cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=0 cterm=NONE
    hi Directory ctermfg=4 ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=1 ctermbg=15 cterm=reverse
    hi IncSearch ctermfg=9 ctermbg=NONE cterm=standout
    hi MatchParen ctermfg=15 ctermbg=0 cterm=bold
    hi ModeMsg ctermfg=4 ctermbg=NONE cterm=NONE
    hi MoreMsg ctermfg=4 ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=7 ctermbg=0 cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=14 cterm=NONE
    hi PmenuSel ctermfg=15 ctermbg=11 cterm=NONE
    hi PmenuThumb ctermfg=NONE ctermbg=11 cterm=NONE
    hi Question ctermfg=6 ctermbg=NONE cterm=bold
    hi Search ctermfg=3 ctermbg=NONE cterm=reverse
    hi SignColumn ctermfg=14 ctermbg=NONE cterm=NONE
    hi Visual ctermfg=11 ctermbg=8 cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=0 cterm=reverse
    hi WarningMsg ctermfg=9 ctermbg=NONE cterm=bold
    hi WildMenu ctermfg=15 ctermbg=0 cterm=reverse
    hi Comment ctermfg=12 ctermbg=NONE cterm=italic
    hi Constant ctermfg=6 ctermbg=NONE cterm=NONE
    hi Error ctermfg=1 ctermbg=15 cterm=bold,reverse
    hi Identifier ctermfg=4 ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=9 ctermbg=NONE cterm=NONE
    hi Special ctermfg=9 ctermbg=NONE cterm=NONE
    hi Statement ctermfg=2 ctermbg=NONE cterm=NONE
    hi Todo ctermfg=5 ctermbg=NONE cterm=bold
    hi Type ctermfg=3 ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=13 ctermbg=NONE cterm=NONE
    hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=0 cterm=NONE
    hi ToolbarButton ctermfg=7 ctermbg=0 cterm=bold
    hi NormalMode ctermfg=14 ctermbg=15 cterm=reverse
    hi InsertMode ctermfg=6 ctermbg=15 cterm=reverse
    hi ReplaceMode ctermfg=9 ctermbg=15 cterm=reverse
    hi VisualMode ctermfg=5 ctermbg=15 cterm=reverse
    hi CommandMode ctermfg=5 ctermbg=15 cterm=reverse
    if !s:italics
      hi Comment cterm=NONE
    endif
    if has('nvim')
      hi! link TermCursor Cursor
      hi TermCursorNC ctermfg=8 ctermbg=11 cterm=NONE
    endif
    if !get(g:, 'solarized_extra_hi_groups', 0)
      unlet s:t_Co s:italics s:termtrans
      finish
    endif
    hi! link vimVar Identifier
    hi! link vimFunc Function
    hi! link vimUserFunc Function
    hi! link helpSpecial Special
    hi! link vimSet Normal
    hi! link vimSetEqual Normal
    hi vimCommentString ctermfg=13 ctermbg=NONE cterm=NONE
    hi vimCommand ctermfg=3 ctermbg=NONE cterm=NONE
    hi vimCmdSep ctermfg=4 ctermbg=NONE cterm=bold
    hi helpExample ctermfg=7 ctermbg=NONE cterm=NONE
    hi helpOption ctermfg=6 ctermbg=NONE cterm=NONE
    hi helpNote ctermfg=5 ctermbg=NONE cterm=NONE
    hi helpVim ctermfg=5 ctermbg=NONE cterm=NONE
    hi helpHyperTextJump ctermfg=4 ctermbg=NONE cterm=NONE
    hi helpHyperTextEntry ctermfg=2 ctermbg=NONE cterm=NONE
    hi vimIsCommand ctermfg=12 ctermbg=NONE cterm=NONE
    hi vimSynMtchOpt ctermfg=3 ctermbg=NONE cterm=NONE
    hi vimSynType ctermfg=6 ctermbg=NONE cterm=NONE
    hi vimHiLink ctermfg=4 ctermbg=NONE cterm=NONE
    hi vimHiGroup ctermfg=4 ctermbg=NONE cterm=NONE
    hi vimGroup ctermfg=4 ctermbg=NONE cterm=bold
    hi! link diffAdded Statement
    hi! link diffLine Identifier
    hi gitcommitComment ctermfg=11 ctermbg=NONE cterm=italic
    hi! link gitcommitUntracked gitcommitComment
    hi! link gitcommitDiscarded gitcommitComment
    hi! link gitcommitSelected gitcommitComment
    hi gitcommitUnmerged ctermfg=2 ctermbg=NONE cterm=bold
    hi gitcommitOnBranch ctermfg=11 ctermbg=NONE cterm=bold
    hi gitcommitBranch ctermfg=5 ctermbg=NONE cterm=bold
    hi! link gitcommitNoBranch gitcommitBranch
    hi gitcommitdiscardedtype ctermfg=1 ctermbg=NONE cterm=NONE
    hi gitcommitselectedtype ctermfg=2 ctermbg=NONE cterm=NONE
    hi gitcommitHeader ctermfg=11 ctermbg=NONE cterm=NONE
    hi gitcommitUntrackedFile ctermfg=6 ctermbg=NONE cterm=bold
    hi gitcommitDiscardedFile ctermfg=1 ctermbg=NONE cterm=bold
    hi gitcommitSelectedFile ctermfg=2 ctermbg=NONE cterm=bold
    hi gitcommitUnmergedFile ctermfg=3 ctermbg=NONE cterm=bold
    hi gitcommitFile ctermfg=14 ctermbg=NONE cterm=bold
    hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
    hi! link gitcommitSelectedArrow gitcommitSelectedFile
    hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
    hi htmlTag ctermfg=11 ctermbg=NONE cterm=NONE
    hi htmlEndTag ctermfg=11 ctermbg=NONE cterm=NONE
    hi htmlTagN ctermfg=7 ctermbg=NONE cterm=bold
    hi htmlTagName ctermfg=4 ctermbg=NONE cterm=bold
    hi htmlSpecialTagName ctermfg=4 ctermbg=NONE cterm=italic
    hi htmlArg ctermfg=12 ctermbg=NONE cterm=NONE
    hi javaScript ctermfg=3 ctermbg=NONE cterm=NONE
    hi! link jsFuncCall Function
    hi perlHereDoc ctermfg=7 ctermbg=NONE cterm=NONE
    hi perlVarPlain ctermfg=3 ctermbg=NONE cterm=NONE
    hi perlStatementFileDesc ctermfg=6 ctermbg=NONE cterm=NONE
    hi texstatement ctermfg=6 ctermbg=NONE cterm=NONE
    hi texmathzonex ctermfg=3 ctermbg=NONE cterm=NONE
    hi texmathmatcher ctermfg=3 ctermbg=NONE cterm=NONE
    hi texreflabel ctermfg=3 ctermbg=NONE cterm=NONE
    hi rubyDefine ctermfg=7 ctermbg=NONE cterm=bold
    hi! link rubySymbol Type
    hi rubyBoolean ctermfg=5 ctermbg=NONE cterm=NONE
    hi cPreCondit ctermfg=9 ctermbg=NONE cterm=NONE
    hi VarId ctermfg=4 ctermbg=NONE cterm=NONE
    hi ConId ctermfg=3 ctermbg=NONE cterm=NONE
    hi hsImport ctermfg=5 ctermbg=NONE cterm=NONE
    hi hsString ctermfg=12 ctermbg=NONE cterm=NONE
    hi hsStructure ctermfg=6 ctermbg=NONE cterm=NONE
    hi hs_hlFunctionName ctermfg=4 ctermbg=NONE cterm=NONE
    hi hsStatement ctermfg=6 ctermbg=NONE cterm=NONE
    hi hsImportLabel ctermfg=6 ctermbg=NONE cterm=NONE
    hi hs_OpFunctionName ctermfg=3 ctermbg=NONE cterm=NONE
    hi hs_DeclareFunction ctermfg=9 ctermbg=NONE cterm=NONE
    hi hsVarSym ctermfg=6 ctermbg=NONE cterm=NONE
    hi hsType ctermfg=3 ctermbg=NONE cterm=NONE
    hi hsTypedef ctermfg=6 ctermbg=NONE cterm=NONE
    hi hsModuleName ctermfg=2 ctermbg=NONE cterm=NONE
    hi! link hsImportParams Delimiter
    hi! link hsDelimTypeExport Delimiter
    hi! link hsModuleStartLabel hsStructure
    hi! link hsModuleWhereLabel hsModuleStartLabel
    hi hsNiceOperator ctermfg=6 ctermbg=NONE cterm=NONE
    hi hsniceoperator ctermfg=6 ctermbg=NONE cterm=NONE
    if !s:italics
      hi gitcommitComment cterm=NONE
      hi htmlSpecialTagName cterm=NONE
    endif
    let hs_highlight_boolean=1
    let hs_highlight_delimiters=1
    hi pandocTitleBlock ctermfg=4 ctermbg=NONE cterm=NONE
    hi pandocTitleBlockTitle ctermfg=4 ctermbg=NONE cterm=bold
    hi pandocTitleComment ctermfg=4 ctermbg=NONE cterm=bold
    hi pandocComment ctermfg=11 ctermbg=NONE cterm=italic
    hi pandocVerbatimBlock ctermfg=3 ctermbg=NONE cterm=NONE
    hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
    hi! link pandocCodeBlock pandocVerbatimBlock
    hi! link pandocCodeBlockDelim pandocVerbatimBlock
    hi pandocBlockQuote ctermfg=4 ctermbg=NONE cterm=NONE
    hi pandocBlockQuoteLeader1 ctermfg=4 ctermbg=NONE cterm=NONE
    hi pandocBlockQuoteLeader2 ctermfg=6 ctermbg=NONE cterm=NONE
    hi pandocBlockQuoteLeader3 ctermfg=3 ctermbg=NONE cterm=NONE
    hi pandocBlockQuoteLeader4 ctermfg=1 ctermbg=NONE cterm=NONE
    hi pandocBlockQuoteLeader5 ctermfg=14 ctermbg=NONE cterm=NONE
    hi pandocBlockQuoteLeader6 ctermfg=11 ctermbg=NONE cterm=NONE
    hi pandocListMarker ctermfg=5 ctermbg=NONE cterm=NONE
    hi pandocListReference ctermfg=5 ctermbg=NONE cterm=NONE
    hi pandocDefinitionBlock ctermfg=13 ctermbg=NONE cterm=NONE
    hi pandocDefinitionTerm ctermfg=13 ctermbg=NONE cterm=standout
    hi pandocDefinitionIndctr ctermfg=13 ctermbg=NONE cterm=bold
    hi pandocEmphasisDefinition ctermfg=13 ctermbg=NONE cterm=italic
    hi pandocEmphasisNestedDefinition ctermfg=13 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisDefinition ctermfg=13 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisNestedDefinition ctermfg=13 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisEmphasisDefinition ctermfg=13 ctermbg=NONE cterm=bold
    hi pandocStrikeoutDefinition ctermfg=13 ctermbg=NONE cterm=reverse
    hi pandocVerbatimInlineDefinition ctermfg=13 ctermbg=NONE cterm=NONE
    hi pandocSuperscriptDefinition ctermfg=13 ctermbg=NONE cterm=NONE
    hi pandocSubscriptDefinition ctermfg=13 ctermbg=NONE cterm=NONE
    hi pandocTable ctermfg=4 ctermbg=NONE cterm=NONE
    hi pandocTableStructure ctermfg=4 ctermbg=NONE cterm=NONE
    hi! link pandocTableStructureTop pandocTableStructre
    hi! link pandocTableStructureEnd pandocTableStructre
    hi pandocTableZebraLight ctermfg=4 ctermbg=8 cterm=NONE
    hi pandocTableZebraDark ctermfg=4 ctermbg=0 cterm=NONE
    hi pandocEmphasisTable ctermfg=4 ctermbg=NONE cterm=italic
    hi pandocEmphasisNestedTable ctermfg=4 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisTable ctermfg=4 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisNestedTable ctermfg=4 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisEmphasisTable ctermfg=4 ctermbg=NONE cterm=bold
    hi pandocStrikeoutTable ctermfg=4 ctermbg=NONE cterm=reverse
    hi pandocVerbatimInlineTable ctermfg=4 ctermbg=NONE cterm=NONE
    hi pandocSuperscriptTable ctermfg=4 ctermbg=NONE cterm=NONE
    hi pandocSubscriptTable ctermfg=4 ctermbg=NONE cterm=NONE
    hi pandocHeading ctermfg=9 ctermbg=NONE cterm=bold
    hi pandocHeadingMarker ctermfg=9 ctermbg=NONE cterm=bold
    hi pandocEmphasisHeading ctermfg=9 ctermbg=NONE cterm=bold
    hi pandocEmphasisNestedHeading ctermfg=9 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisHeading ctermfg=9 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisNestedHeading ctermfg=9 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisEmphasisHeading ctermfg=9 ctermbg=NONE cterm=bold
    hi pandocStrikeoutHeading ctermfg=9 ctermbg=NONE cterm=reverse
    hi pandocVerbatimInlineHeading ctermfg=9 ctermbg=NONE cterm=bold
    hi pandocSuperscriptHeading ctermfg=9 ctermbg=NONE cterm=bold
    hi pandocSubscriptHeading ctermfg=9 ctermbg=NONE cterm=bold
    hi pandocLinkDelim ctermfg=11 ctermbg=NONE cterm=NONE
    hi pandocLinkLabel ctermfg=4 ctermbg=NONE cterm=NONE
    hi pandocLinkText ctermfg=4 ctermbg=NONE cterm=NONE
    hi pandocLinkURL ctermfg=12 ctermbg=NONE cterm=NONE
    hi pandocLinkTitle ctermfg=12 ctermbg=NONE cterm=NONE
    hi pandocLinkTitleDelim ctermfg=11 ctermbg=NONE cterm=NONE
    hi pandocLinkDefinition ctermfg=6 ctermbg=NONE cterm=NONE
    hi pandocLinkDefinitionID ctermfg=4 ctermbg=NONE cterm=bold
    hi pandocImageCaption ctermfg=13 ctermbg=NONE cterm=bold
    hi pandocFootnoteLink ctermfg=2 ctermbg=NONE cterm=NONE
    hi pandocFootnoteDefLink ctermfg=2 ctermbg=NONE cterm=bold
    hi pandocFootnoteInline ctermfg=2 ctermbg=NONE cterm=bold
    hi pandocFootnote ctermfg=2 ctermbg=NONE cterm=NONE
    hi pandocCitationDelim ctermfg=5 ctermbg=NONE cterm=NONE
    hi pandocCitation ctermfg=5 ctermbg=NONE cterm=NONE
    hi pandocCitationID ctermfg=5 ctermbg=NONE cterm=NONE
    hi pandocCitationRef ctermfg=5 ctermbg=NONE cterm=NONE
    hi pandocStyleDelim ctermfg=11 ctermbg=NONE cterm=NONE
    hi pandocEmphasis ctermfg=14 ctermbg=NONE cterm=italic
    hi pandocEmphasisNested ctermfg=14 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasis ctermfg=14 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisNested ctermfg=14 ctermbg=NONE cterm=bold
    hi pandocStrongEmphasisEmphasis ctermfg=14 ctermbg=NONE cterm=bold
    hi pandocStrikeout ctermfg=11 ctermbg=NONE cterm=reverse
    hi pandocVerbatimInline ctermfg=3 ctermbg=NONE cterm=NONE
    hi pandocSuperscript ctermfg=13 ctermbg=NONE cterm=NONE
    hi pandocSubscript ctermfg=13 ctermbg=NONE cterm=NONE
    hi pandocRule ctermfg=4 ctermbg=NONE cterm=bold
    hi pandocRuleLine ctermfg=4 ctermbg=NONE cterm=bold
    hi pandocEscapePair ctermfg=1 ctermbg=NONE cterm=bold
    hi pandocCitationRef ctermfg=5 ctermbg=NONE cterm=NONE
    hi pandocNonBreakingSpace ctermfg=1 ctermbg=NONE cterm=reverse
    hi! link pandocEscapedCharacter pandocEscapePair
    hi! link pandocLineBreak pandocEscapePair
    hi pandocMetadataDelim ctermfg=11 ctermbg=NONE cterm=NONE
    hi pandocMetadata ctermfg=4 ctermbg=NONE cterm=NONE
    hi pandocMetadataKey ctermfg=4 ctermbg=NONE cterm=NONE
    hi pandocMetadata ctermfg=4 ctermbg=NONE cterm=bold
    hi! link pandocMetadataTitle pandocMetadata
    if !s:italics
      hi pandocComment cterm=NONE
      hi pandocEmphasisDefinition cterm=NONE
      hi pandocEmphasisTable cterm=NONE
      hi pandocEmphasis cterm=NONE
    endif
    if get(g:, 'solarized_statusline', '') ==# 'flat'
      hi ALEErrorSign ctermfg=1 ctermbg=NONE cterm=bold
      hi ALEInfoSign ctermfg=6 ctermbg=NONE cterm=bold
      hi ALEWarningSign ctermfg=3 ctermbg=NONE cterm=bold
      hi ALEErrorSignLineNr ctermfg=1 ctermbg=NONE cterm=NONE
      hi ALEInfoSignLineNr ctermfg=6 ctermbg=NONE cterm=NONE
      hi ALEWarningSignLineNr ctermfg=3 ctermbg=NONE cterm=NONE
    else
      if get(g:, 'ale_sign_highlight_linenrs', '') ==# 1
        hi ALEErrorSign ctermfg=0 ctermbg=1 cterm=bold
        hi ALEInfoSign ctermfg=0 ctermbg=6 cterm=bold
        hi ALEWarningSign ctermfg=0 ctermbg=3 cterm=bold
      else
        hi ALEErrorSign ctermfg=1 ctermbg=0 cterm=bold
        hi ALEInfoSign ctermfg=6 ctermbg=0 cterm=bold
        hi ALEWarningSign ctermfg=3 ctermbg=0 cterm=bold
      endif
      hi ALEErrorSignLineNr ctermfg=0 ctermbg=1 cterm=NONE
      hi ALEInfoSignLineNr ctermfg=0 ctermbg=6 cterm=NONE
      hi ALEWarningSignLineNr ctermfg=0 ctermbg=3 cterm=NONE
    endif
    hi ALEError ctermfg=1 ctermbg=NONE cterm=undercurl
    hi ALEErrorLine ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ALEInfo ctermfg=6 ctermbg=NONE cterm=undercurl
    hi ALEInfoLine ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ALEWarning ctermfg=3 ctermbg=NONE cterm=undercurl
    hi ALEWarningLine ctermfg=NONE ctermbg=NONE cterm=NONE
    hi! link ALEStyleError ALEError
    hi! link ALEStyleErrorSign ALEErrorSign
    hi! link ALEStyleErrorSignLineNr ALEErrorSignLineNr
    hi! link ALEStyleWarning ALEWarning
    hi! link ALEStyleWarningSign ALEWarningSign
    hi! link ALEStyleWarningSignLineNr ALEWarningSignLineNr
    unlet s:termtrans
    unlet s:t_Co s:italics
    finish
  endif
  " Light background
  if s:termtrans
    hi Normal ctermfg=0 ctermbg=NONE cterm=NONE
    hi FoldColumn ctermfg=10 ctermbg=NONE cterm=NONE
    hi Folded ctermfg=10 ctermbg=NONE cterm=bold
    hi LineNr ctermfg=14 ctermbg=NONE cterm=NONE
    hi Terminal ctermfg=fg ctermbg=NONE cterm=NONE
  else
    hi Normal ctermfg=0 ctermbg=15 cterm=NONE
    hi FoldColumn ctermfg=10 ctermbg=7 cterm=NONE
    hi Folded ctermfg=10 ctermbg=7 cterm=bold
    hi LineNr ctermfg=14 ctermbg=7 cterm=NONE
    hi Terminal ctermfg=fg ctermbg=15 cterm=NONE
  endif
  if get(g:, 'solarized_visibility', '') ==# 'high'
    hi CursorLineNr ctermfg=1 ctermbg=7 cterm=bold
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor ctermfg=15 ctermbg=10 cterm=NONE
    else
      hi Cursor ctermfg=15 ctermbg=1 cterm=NONE
    endif
    hi MatchParen ctermfg=15 ctermbg=11 cterm=bold
    hi NonText ctermfg=1 ctermbg=NONE cterm=bold
    hi SpecialKey ctermfg=1 ctermbg=NONE cterm=reverse
    hi SpellBad ctermfg=5 ctermbg=15 cterm=reverse,underline
    hi SpellCap ctermfg=5 ctermbg=15 cterm=reverse,underline
    hi SpellLocal ctermfg=3 ctermbg=15 cterm=reverse,underline
    hi SpellRare ctermfg=6 ctermbg=15 cterm=reverse,underline
    hi Title ctermfg=9 ctermbg=NONE cterm=bold
  elseif get(g:, 'solarized_visibility', '') ==# 'low'
    hi CursorLineNr ctermfg=14 ctermbg=7 cterm=bold
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor ctermfg=15 ctermbg=10 cterm=NONE
    else
      hi Cursor ctermfg=15 ctermbg=9 cterm=NONE
    endif
    hi MatchParen ctermfg=1 ctermbg=7 cterm=bold,underline
    hi NonText ctermfg=7 ctermbg=NONE cterm=bold
    hi SpecialKey ctermfg=7 ctermbg=NONE cterm=bold
    hi SpellBad ctermfg=5 ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=5 ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=3 ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=6 ctermbg=NONE cterm=underline
    hi Title ctermfg=14 ctermbg=NONE cterm=bold
  else
    hi CursorLineNr ctermfg=10 ctermbg=7 cterm=bold
    if get(g:, 'solarized_old_cursor_style', 0)
      hi Cursor ctermfg=15 ctermbg=10 cterm=NONE
    else
      hi Cursor ctermfg=15 ctermbg=9 cterm=NONE
    endif
    hi MatchParen ctermfg=1 ctermbg=7 cterm=bold,underline
    hi NonText ctermfg=11 ctermbg=NONE cterm=bold
    hi SpecialKey ctermfg=11 ctermbg=7 cterm=bold
    hi SpellBad ctermfg=5 ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=5 ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=3 ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=6 ctermbg=NONE cterm=underline
    hi Title ctermfg=9 ctermbg=NONE cterm=bold
  endif
  if s:termtrans
    hi CursorLineNr ctermbg=NONE
  endif
  if get(g:, 'solarized_diffmode', '') ==# 'high'
    hi DiffAdd ctermfg=2 ctermbg=NONE cterm=reverse
    hi DiffChange ctermfg=3 ctermbg=NONE cterm=reverse
    hi DiffDelete ctermfg=1 ctermbg=NONE cterm=reverse
    hi DiffText ctermfg=4 ctermbg=NONE cterm=reverse
  elseif get(g:, 'solarized_diffmode', '') ==# 'low'
    hi DiffAdd ctermfg=2 ctermbg=NONE cterm=NONE
    hi DiffChange ctermfg=3 ctermbg=NONE cterm=NONE
    hi DiffDelete ctermfg=1 ctermbg=NONE cterm=bold
    hi DiffText ctermfg=4 ctermbg=NONE cterm=NONE
  else " normal diffmode
    hi DiffAdd ctermfg=2 ctermbg=7 cterm=NONE
    hi DiffChange ctermfg=3 ctermbg=7 cterm=NONE
    hi DiffDelete ctermfg=1 ctermbg=7 cterm=bold
    hi DiffText ctermfg=4 ctermbg=7 cterm=NONE
  endif
  if get(g:, 'solarized_statusline', '') ==# 'low'
    hi StatusLine ctermfg=14 ctermbg=15 cterm=reverse
    hi StatusLineNC ctermfg=14 ctermbg=0 cterm=reverse
    hi TabLine ctermfg=14 ctermbg=0 cterm=reverse
    hi TabLineFill ctermfg=14 ctermbg=0 cterm=reverse
    hi TabLineSel ctermfg=0 ctermbg=15 cterm=reverse
    hi VertSplit ctermfg=0 ctermbg=14 cterm=NONE
    hi WildMenu ctermfg=0 ctermbg=15 cterm=reverse
  elseif get(g:, 'solarized_statusline', '') ==# 'flat'
    hi StatusLine ctermfg=7 ctermbg=8 cterm=reverse
    hi StatusLineNC ctermfg=7 ctermbg=0 cterm=reverse
    hi TabLineSel ctermfg=8 ctermbg=7 cterm=NONE
    hi TabLine ctermfg=14 ctermbg=7 cterm=NONE
    hi TabLineFill ctermfg=14 ctermbg=7 cterm=NONE
    hi VertSplit ctermfg=14 ctermbg=7 cterm=NONE
    hi WildMenu ctermfg=10 ctermbg=15 cterm=reverse
  else
    hi StatusLine ctermfg=0 ctermbg=7 cterm=reverse
    hi StatusLineNC ctermfg=11 ctermbg=7 cterm=reverse
    hi TabLine ctermfg=11 ctermbg=7 cterm=reverse
    hi TabLineFill ctermfg=11 ctermbg=7 cterm=reverse
    hi TabLineSel ctermfg=0 ctermbg=7 cterm=reverse
    hi VertSplit ctermfg=0 ctermbg=14 cterm=NONE
    hi WildMenu ctermfg=11 ctermbg=15 cterm=reverse
  endif
  hi ColorColumn ctermfg=NONE ctermbg=7 cterm=NONE
  hi Conceal ctermfg=4 ctermbg=NONE cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=7 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=7 cterm=NONE
  hi Directory ctermfg=4 ctermbg=NONE cterm=NONE
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ErrorMsg ctermfg=1 ctermbg=15 cterm=reverse
  hi IncSearch ctermfg=9 ctermbg=NONE cterm=standout
  hi ModeMsg ctermfg=4 ctermbg=NONE cterm=NONE
  hi MoreMsg ctermfg=4 ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=0 ctermbg=7 cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=0 cterm=NONE
  hi PmenuSel ctermfg=8 ctermbg=14 cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=11 cterm=NONE
  hi Question ctermfg=6 ctermbg=NONE cterm=bold
  hi Search ctermfg=3 ctermbg=NONE cterm=reverse
  hi SignColumn ctermfg=10 ctermbg=NONE cterm=NONE
  hi Visual ctermfg=14 ctermbg=15 cterm=reverse
  hi VisualNOS ctermfg=NONE ctermbg=7 cterm=reverse
  hi WarningMsg ctermfg=9 ctermbg=NONE cterm=bold
  hi Comment ctermfg=11 ctermbg=NONE cterm=italic
  hi Constant ctermfg=6 ctermbg=NONE cterm=NONE
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  hi Error ctermfg=1 ctermbg=15 cterm=bold,reverse
  hi Identifier ctermfg=4 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=9 ctermbg=NONE cterm=NONE
  hi Special ctermfg=9 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=2 ctermbg=NONE cterm=NONE
  hi Todo ctermfg=5 ctermbg=NONE cterm=bold
  hi ToolbarButton ctermfg=0 ctermbg=7 cterm=bold
  hi ToolbarLine ctermfg=NONE ctermbg=7 cterm=NONE
  hi Type ctermfg=3 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=13 ctermbg=NONE cterm=NONE
  hi NormalMode ctermfg=0 ctermbg=15 cterm=reverse
  hi InsertMode ctermfg=6 ctermbg=15 cterm=reverse
  hi ReplaceMode ctermfg=9 ctermbg=15 cterm=reverse
  hi VisualMode ctermfg=5 ctermbg=15 cterm=reverse
  hi CommandMode ctermfg=5 ctermbg=15 cterm=reverse
  if !s:italics
    hi Comment cterm=NONE
  endif
  if has('nvim')
    hi! link TermCursor Cursor
    hi TermCursorNC ctermfg=15 ctermbg=14 cterm=NONE
  endif
  if !get(g:, 'solarized_extra_hi_groups', 0)
    unlet s:t_Co s:italics s:termtrans
    finish
  endif
  hi! link vimVar Identifier
  hi! link vimFunc Function
  hi! link vimUserFunc Function
  hi! link helpSpecial Special
  hi! link vimSet Normal
  hi! link vimSetEqual Normal
  hi vimCommentString ctermfg=13 ctermbg=NONE cterm=NONE
  hi vimCommand ctermfg=3 ctermbg=NONE cterm=NONE
  hi vimCmdSep ctermfg=4 ctermbg=NONE cterm=bold
  hi helpExample ctermfg=0 ctermbg=NONE cterm=NONE
  hi helpOption ctermfg=6 ctermbg=NONE cterm=NONE
  hi helpNote ctermfg=5 ctermbg=NONE cterm=NONE
  hi helpVim ctermfg=5 ctermbg=NONE cterm=NONE
  hi helpHyperTextJump ctermfg=4 ctermbg=NONE cterm=NONE
  hi helpHyperTextEntry ctermfg=2 ctermbg=NONE cterm=NONE
  hi vimIsCommand ctermfg=11 ctermbg=NONE cterm=NONE
  hi vimSynMtchOpt ctermfg=3 ctermbg=NONE cterm=NONE
  hi vimSynType ctermfg=6 ctermbg=NONE cterm=NONE
  hi vimHiLink ctermfg=4 ctermbg=NONE cterm=NONE
  hi vimHiGroup ctermfg=4 ctermbg=NONE cterm=NONE
  hi vimGroup ctermfg=4 ctermbg=NONE cterm=bold
  hi! link diffAdded Statement
  hi! link diffLine Identifier
  hi gitcommitComment ctermfg=14 ctermbg=NONE cterm=italic
  hi! link gitcommitUntracked gitcommitComment
  hi! link gitcommitDiscarded gitcommitComment
  hi! link gitcommitSelected gitcommitComment
  hi gitcommitUnmerged ctermfg=2 ctermbg=NONE cterm=bold
  hi gitcommitOnBranch ctermfg=14 ctermbg=NONE cterm=bold
  hi gitcommitBranch ctermfg=5 ctermbg=NONE cterm=bold
  hi! link gitcommitNoBranch gitcommitBranch
  hi gitcommitdiscardedtype ctermfg=1 ctermbg=NONE cterm=NONE
  hi gitcommitselectedtype ctermfg=2 ctermbg=NONE cterm=NONE
  hi gitcommitHeader ctermfg=14 ctermbg=NONE cterm=NONE
  hi gitcommitUntrackedFile ctermfg=6 ctermbg=NONE cterm=bold
  hi gitcommitDiscardedFile ctermfg=1 ctermbg=NONE cterm=bold
  hi gitcommitSelectedFile ctermfg=2 ctermbg=NONE cterm=bold
  hi gitcommitUnmergedFile ctermfg=3 ctermbg=NONE cterm=bold
  hi gitcommitFile ctermfg=10 ctermbg=NONE cterm=bold
  hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
  hi! link gitcommitSelectedArrow gitcommitSelectedFile
  hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
  hi htmlTag ctermfg=14 ctermbg=NONE cterm=NONE
  hi htmlEndTag ctermfg=14 ctermbg=NONE cterm=NONE
  hi htmlTagN ctermfg=0 ctermbg=NONE cterm=bold
  hi htmlTagName ctermfg=4 ctermbg=NONE cterm=bold
  hi htmlSpecialTagName ctermfg=4 ctermbg=NONE cterm=italic
  hi htmlArg ctermfg=11 ctermbg=NONE cterm=NONE
  hi javaScript ctermfg=3 ctermbg=NONE cterm=NONE
  hi! link jsFuncCall Function
  hi perlHereDoc ctermfg=0 ctermbg=NONE cterm=NONE
  hi perlVarPlain ctermfg=3 ctermbg=NONE cterm=NONE
  hi perlStatementFileDesc ctermfg=6 ctermbg=NONE cterm=NONE
  hi texstatement ctermfg=6 ctermbg=NONE cterm=NONE
  hi texmathzonex ctermfg=3 ctermbg=NONE cterm=NONE
  hi texmathmatcher ctermfg=3 ctermbg=NONE cterm=NONE
  hi texreflabel ctermfg=3 ctermbg=NONE cterm=NONE
  hi rubyDefine ctermfg=0 ctermbg=NONE cterm=bold
  hi! link rubySymbol Type
  hi rubyBoolean ctermfg=5 ctermbg=NONE cterm=NONE
  hi cPreCondit ctermfg=9 ctermbg=NONE cterm=NONE
  hi VarId ctermfg=4 ctermbg=NONE cterm=NONE
  hi ConId ctermfg=3 ctermbg=NONE cterm=NONE
  hi hsImport ctermfg=5 ctermbg=NONE cterm=NONE
  hi hsString ctermfg=11 ctermbg=NONE cterm=NONE
  hi hsStructure ctermfg=6 ctermbg=NONE cterm=NONE
  hi hs_hlFunctionName ctermfg=4 ctermbg=NONE cterm=NONE
  hi hsStatement ctermfg=6 ctermbg=NONE cterm=NONE
  hi hsImportLabel ctermfg=6 ctermbg=NONE cterm=NONE
  hi hs_OpFunctionName ctermfg=3 ctermbg=NONE cterm=NONE
  hi hs_DeclareFunction ctermfg=9 ctermbg=NONE cterm=NONE
  hi hsVarSym ctermfg=6 ctermbg=NONE cterm=NONE
  hi hsType ctermfg=3 ctermbg=NONE cterm=NONE
  hi hsTypedef ctermfg=6 ctermbg=NONE cterm=NONE
  hi hsModuleName ctermfg=2 ctermbg=NONE cterm=NONE
  hi! link hsImportParams Delimiter
  hi! link hsDelimTypeExport Delimiter
  hi! link hsModuleStartLabel hsStructure
  hi! link hsModuleWhereLabel hsModuleStartLabel
  hi hsNiceOperator ctermfg=6 ctermbg=NONE cterm=NONE
  hi hsniceoperator ctermfg=6 ctermbg=NONE cterm=NONE
  if !s:italics
    hi gitcommitComment cterm=NONE
    hi htmlSpecialTagName cterm=NONE
  endif
  let hs_highlight_boolean=1
  let hs_highlight_delimiters=1
  hi pandocTitleBlock ctermfg=4 ctermbg=NONE cterm=NONE
  hi pandocTitleBlockTitle ctermfg=4 ctermbg=NONE cterm=bold
  hi pandocTitleComment ctermfg=4 ctermbg=NONE cterm=bold
  hi pandocComment ctermfg=14 ctermbg=NONE cterm=italic
  hi pandocVerbatimBlock ctermfg=3 ctermbg=NONE cterm=NONE
  hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
  hi! link pandocCodeBlock pandocVerbatimBlock
  hi! link pandocCodeBlockDelim pandocVerbatimBlock
  hi pandocBlockQuote ctermfg=4 ctermbg=NONE cterm=NONE
  hi pandocBlockQuoteLeader1 ctermfg=4 ctermbg=NONE cterm=NONE
  hi pandocBlockQuoteLeader2 ctermfg=6 ctermbg=NONE cterm=NONE
  hi pandocBlockQuoteLeader3 ctermfg=3 ctermbg=NONE cterm=NONE
  hi pandocBlockQuoteLeader4 ctermfg=1 ctermbg=NONE cterm=NONE
  hi pandocBlockQuoteLeader5 ctermfg=10 ctermbg=NONE cterm=NONE
  hi pandocBlockQuoteLeader6 ctermfg=14 ctermbg=NONE cterm=NONE
  hi pandocListMarker ctermfg=5 ctermbg=NONE cterm=NONE
  hi pandocListReference ctermfg=5 ctermbg=NONE cterm=NONE
  hi pandocDefinitionBlock ctermfg=13 ctermbg=NONE cterm=NONE
  hi pandocDefinitionTerm ctermfg=13 ctermbg=NONE cterm=standout
  hi pandocDefinitionIndctr ctermfg=13 ctermbg=NONE cterm=bold
  hi pandocEmphasisDefinition ctermfg=13 ctermbg=NONE cterm=italic
  hi pandocEmphasisNestedDefinition ctermfg=13 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisDefinition ctermfg=13 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisNestedDefinition ctermfg=13 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisEmphasisDefinition ctermfg=13 ctermbg=NONE cterm=bold
  hi pandocStrikeoutDefinition ctermfg=13 ctermbg=NONE cterm=reverse
  hi pandocVerbatimInlineDefinition ctermfg=13 ctermbg=NONE cterm=NONE
  hi pandocSuperscriptDefinition ctermfg=13 ctermbg=NONE cterm=NONE
  hi pandocSubscriptDefinition ctermfg=13 ctermbg=NONE cterm=NONE
  hi pandocTable ctermfg=4 ctermbg=NONE cterm=NONE
  hi pandocTableStructure ctermfg=4 ctermbg=NONE cterm=NONE
  hi! link pandocTableStructureTop pandocTableStructre
  hi! link pandocTableStructureEnd pandocTableStructre
  hi pandocTableZebraLight ctermfg=4 ctermbg=15 cterm=NONE
  hi pandocTableZebraDark ctermfg=4 ctermbg=7 cterm=NONE
  hi pandocEmphasisTable ctermfg=4 ctermbg=NONE cterm=italic
  hi pandocEmphasisNestedTable ctermfg=4 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisTable ctermfg=4 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisNestedTable ctermfg=4 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisEmphasisTable ctermfg=4 ctermbg=NONE cterm=bold
  hi pandocStrikeoutTable ctermfg=4 ctermbg=NONE cterm=reverse
  hi pandocVerbatimInlineTable ctermfg=4 ctermbg=NONE cterm=NONE
  hi pandocSuperscriptTable ctermfg=4 ctermbg=NONE cterm=NONE
  hi pandocSubscriptTable ctermfg=4 ctermbg=NONE cterm=NONE
  hi pandocHeading ctermfg=9 ctermbg=NONE cterm=bold
  hi pandocHeadingMarker ctermfg=9 ctermbg=NONE cterm=bold
  hi pandocEmphasisHeading ctermfg=9 ctermbg=NONE cterm=bold
  hi pandocEmphasisNestedHeading ctermfg=9 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisHeading ctermfg=9 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisNestedHeading ctermfg=9 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisEmphasisHeading ctermfg=9 ctermbg=NONE cterm=bold
  hi pandocStrikeoutHeading ctermfg=9 ctermbg=NONE cterm=reverse
  hi pandocVerbatimInlineHeading ctermfg=9 ctermbg=NONE cterm=bold
  hi pandocSuperscriptHeading ctermfg=9 ctermbg=NONE cterm=bold
  hi pandocSubscriptHeading ctermfg=9 ctermbg=NONE cterm=bold
  hi pandocLinkDelim ctermfg=14 ctermbg=NONE cterm=NONE
  hi pandocLinkLabel ctermfg=4 ctermbg=NONE cterm=NONE
  hi pandocLinkText ctermfg=4 ctermbg=NONE cterm=NONE
  hi pandocLinkURL ctermfg=11 ctermbg=NONE cterm=NONE
  hi pandocLinkTitle ctermfg=11 ctermbg=NONE cterm=NONE
  hi pandocLinkTitleDelim ctermfg=14 ctermbg=NONE cterm=NONE
  hi pandocLinkDefinition ctermfg=6 ctermbg=NONE cterm=NONE
  hi pandocLinkDefinitionID ctermfg=4 ctermbg=NONE cterm=bold
  hi pandocImageCaption ctermfg=13 ctermbg=NONE cterm=bold
  hi pandocFootnoteLink ctermfg=2 ctermbg=NONE cterm=NONE
  hi pandocFootnoteDefLink ctermfg=2 ctermbg=NONE cterm=bold
  hi pandocFootnoteInline ctermfg=2 ctermbg=NONE cterm=bold
  hi pandocFootnote ctermfg=2 ctermbg=NONE cterm=NONE
  hi pandocCitationDelim ctermfg=5 ctermbg=NONE cterm=NONE
  hi pandocCitation ctermfg=5 ctermbg=NONE cterm=NONE
  hi pandocCitationID ctermfg=5 ctermbg=NONE cterm=NONE
  hi pandocCitationRef ctermfg=5 ctermbg=NONE cterm=NONE
  hi pandocStyleDelim ctermfg=14 ctermbg=NONE cterm=NONE
  hi pandocEmphasis ctermfg=10 ctermbg=NONE cterm=italic
  hi pandocEmphasisNested ctermfg=10 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasis ctermfg=10 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisNested ctermfg=10 ctermbg=NONE cterm=bold
  hi pandocStrongEmphasisEmphasis ctermfg=10 ctermbg=NONE cterm=bold
  hi pandocStrikeout ctermfg=14 ctermbg=NONE cterm=reverse
  hi pandocVerbatimInline ctermfg=3 ctermbg=NONE cterm=NONE
  hi pandocSuperscript ctermfg=13 ctermbg=NONE cterm=NONE
  hi pandocSubscript ctermfg=13 ctermbg=NONE cterm=NONE
  hi pandocRule ctermfg=4 ctermbg=NONE cterm=bold
  hi pandocRuleLine ctermfg=4 ctermbg=NONE cterm=bold
  hi pandocEscapePair ctermfg=1 ctermbg=NONE cterm=bold
  hi pandocCitationRef ctermfg=5 ctermbg=NONE cterm=NONE
  hi pandocNonBreakingSpace ctermfg=1 ctermbg=NONE cterm=reverse
  hi! link pandocEscapedCharacter pandocEscapePair
  hi! link pandocLineBreak pandocEscapePair
  hi pandocMetadataDelim ctermfg=14 ctermbg=NONE cterm=NONE
  hi pandocMetadata ctermfg=4 ctermbg=NONE cterm=NONE
  hi pandocMetadataKey ctermfg=4 ctermbg=NONE cterm=NONE
  hi pandocMetadata ctermfg=4 ctermbg=NONE cterm=bold
  hi! link pandocMetadataTitle pandocMetadata
  if !s:italics
    hi pandocComment cterm=NONE
    hi pandocEmphasisDefinition cterm=NONE
    hi pandocEmphasisTable cterm=NONE
    hi pandocEmphasis cterm=NONE
  endif
  if get(g:, 'solarized_statusline', '') ==# 'flat'
    hi ALEErrorSign ctermfg=1 ctermbg=NONE cterm=bold
    hi ALEInfoSign ctermfg=6 ctermbg=NONE cterm=bold
    hi ALEWarningSign ctermfg=3 ctermbg=NONE cterm=bold
    hi ALEErrorSignLineNr ctermfg=1 ctermbg=NONE cterm=NONE
    hi ALEInfoSignLineNr ctermfg=6 ctermbg=NONE cterm=NONE
    hi ALEWarningSignLineNr ctermfg=3 ctermbg=NONE cterm=NONE
  else
    if get(g:, 'ale_sign_highlight_linenrs', '') ==# 1
      hi ALEErrorSign ctermfg=7 ctermbg=1 cterm=bold
      hi ALEInfoSign ctermfg=7 ctermbg=6 cterm=bold
      hi ALEWarningSign ctermfg=7 ctermbg=3 cterm=bold
    else
      hi ALEErrorSign ctermfg=1 ctermbg=7 cterm=bold
      hi ALEInfoSign ctermfg=6 ctermbg=7 cterm=bold
      hi ALEWarningSign ctermfg=3 ctermbg=7 cterm=bold
    endif
    hi ALEErrorSignLineNr ctermfg=7 ctermbg=1 cterm=NONE
    hi ALEInfoSignLineNr ctermfg=7 ctermbg=6 cterm=NONE
    hi ALEWarningSignLineNr ctermfg=7 ctermbg=3 cterm=NONE
  endif
  hi ALEError ctermfg=1 ctermbg=NONE cterm=undercurl
  hi ALEErrorLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ALEInfo ctermfg=6 ctermbg=NONE cterm=undercurl
  hi ALEInfoLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ALEWarning ctermfg=3 ctermbg=NONE cterm=undercurl
  hi ALEWarningLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi! link ALEStyleError ALEError
  hi! link ALEStyleErrorSign ALEErrorSign
  hi! link ALEStyleErrorSignLineNr ALEErrorSignLineNr
  hi! link ALEStyleWarning ALEWarning
  hi! link ALEStyleWarningSign ALEWarningSign
  hi! link ALEStyleWarningSignLineNr ALEWarningSignLineNr
  unlet s:termtrans
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 2
  hi Normal term=NONE
  hi ColorColumn term=reverse
  hi Conceal term=NONE
  hi Cursor term=NONE
  hi CursorColumn term=reverse
  hi CursorLine term=underline
  hi CursorLineNr term=bold,italic,reverse,underline
  hi DiffAdd term=reverse,underline
  hi DiffChange term=reverse,underline
  hi DiffDelete term=reverse,underline
  hi DiffText term=bold,reverse,underline
  hi Directory term=NONE
  hi EndOfBuffer term=NONE
  hi ErrorMsg term=bold,italic,reverse
  hi FoldColumn term=reverse
  hi Folded term=italic,reverse,underline
  hi IncSearch term=bold,italic,reverse
  hi LineNr term=reverse
  hi MatchParen term=bold,underline
  hi ModeMsg term=NONE
  hi MoreMsg term=NONE
  hi NonText term=NONE
  hi Pmenu term=reverse
  hi PmenuSbar term=NONE
  hi PmenuSel term=NONE
  hi PmenuThumb term=NONE
  hi Question term=standout
  hi Search term=italic,underline
  hi SignColumn term=reverse
  hi SpecialKey term=bold
  hi SpellBad term=italic,underline
  hi SpellCap term=italic,underline
  hi SpellLocal term=italic,underline
  hi SpellRare term=italic,underline
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=reverse
  hi TabLine term=italic,reverse,underline
  hi TabLineFill term=reverse,underline
  hi TabLineSel term=bold
  hi Title term=bold
  hi VertSplit term=reverse
  hi Visual term=reverse
  hi VisualNOS term=NONE
  hi WarningMsg term=standout
  hi WildMenu term=bold
  hi Comment term=italic
  hi Constant term=bold,italic
  hi Error term=reverse
  hi Identifier term=italic
  hi Ignore term=NONE
  hi PreProc term=italic
  hi Special term=bold,italic
  hi Statement term=bold
  hi Todo term=bold,underline
  hi Type term=bold
  hi Underlined term=underline
  hi CursorIM term=NONE
  hi ToolbarLine term=reverse
  hi ToolbarButton term=bold,reverse
  if !s:italics
    hi CursorLineNr term=bold,reverse,underline
    hi ErrorMsg term=bold,reverse
    hi Folded term=reverse,underline
    hi IncSearch term=bold,reverse
    hi Search term=underline
    hi SpellBad term=underline
    hi SpellCap term=underline
    hi SpellLocal term=underline
    hi SpellRare term=underline
    hi TabLine term=reverse,underline
    hi Comment term=NONE
    hi Constant term=bold
    hi Identifier term=NONE
    hi PreProc term=NONE
    hi Special term=bold
  endif
  unlet s:termtrans
  unlet s:t_Co s:italics
  finish
endif

" Background: dark
" Color: base02   #073642   236      0
" Color: red      #dc322f   160      1
" Color: green    #859900   106      2
" Color: yellow   #b58900   136      3
" Color: blue     #268bd2   32       4
" Color: magenta  #d33682   162      5
" Color: cyan     #2aa198   37       6
" Color: base1    #eee8d5   254      7
" Color: base03   #002b36   235      8
" Color: back     #002b36   235      8
" Color: orange   #cb4b16   166      9
" Color: base01   #657b83   243     11
" Color: base00   #839496   246     12
" Color: violet   #6c71c4   61      13
" Color: base0    #93a1a1   247     14
" Color: base2    #fdf6e3   230     15
" Color: base3    #fdf6e3   230     15
" Term Colors: base02 red    green  yellow blue  magenta cyan  base2
" Term Colors: base03 orange base01 base00 base0 violet  base1 base3
" Background: light
" Color: base1    #073642   236     0
" Color: red      #dc322f   160     1
" Color: green    #859900   106     2
" Color: yellow   #b58900   136     3
" Color: blue     #268bd2   32      4
" Color: magenta  #d33682   162     5
" Color: cyan     #2aa198   37      6
" Color: base02   #eee8d5   254     7
" Color: base3    #002b36   235     8
" Color: base2    #002b36   235     8
" Color: orange   #cb4b16   166     9
" Color: base0    #586e75   242    10
" Color: base00   #657b83   66     11
" Color: violet   #6c71c4   61     13
" Color: base01   #93a1a1   247    14
" Color: base03   #fdf6e3   230    15
" Color: back     #fdf6e3   230    15
" Term Colors: base2  red    green  yellow blue   magenta cyan   base02
" Term Colors: base3  orange base1  base0  base00 violet  base01 base03
" Background: any
" vim: et ts=2 sw=2
