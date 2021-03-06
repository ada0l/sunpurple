" Author: 0x919490
if version > 580
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="sunpurple"

let s:bg            = "06030f"
let s:bg_l          = "0e0421"
let s:bg_sel        = "180539"
" https://coolors.co/06030f-0e0421-180539

let s:com           = "444444"
let s:fg_d          = "ff8ba4"
let s:fg            = "ff9e9f"
let s:fg_l          = "ffa9a7"
" https://coolors.co/ff8ba4-ff9e9f-ffa9a7

let s:color00       = "d19eec"
let s:color01       = "d2b0ce"
let s:color02       = "c47bff"
let s:color03       = "fc5b8d"
let s:color04       = "d37bff"
let s:color05       = "c891ff"
let s:color06       = "fcced4"
" https://coolors.co/d19eec-d2b0ce-c47bff-fc5d8d-d37bff-c891ff-fcced4


fun! s:hi(group, fg, bg)
    if a:fg != ""
        exec "hi " . a:group . " guifg=#" . a:fg
    endif
    if a:bg != ""
        exec "hi " . a:group . " guibg=#" . a:bg
    endif
endfun

"""""""""""""""""""""""""""""""""""""""""""""""
" syntax 
"""""""""""""""""""""""""""""""""""""""""""""""

" values
call s:hi("Constant",       s:color01,      "")
call s:hi("String",         s:color01,      "")
call s:hi("Character",      s:color01,      "")
call s:hi("Number",         s:color01,      "")
call s:hi("Boolean",        s:color01,      "")
call s:hi("Float",          s:color01,      "")

" var, fun
call s:hi("Identifier",     s:color00,      "")
call s:hi("Function",       s:color00,      "")

" if, switch, for, case and etc.
call s:hi("Statement",      s:color06,      "")
call s:hi("Conditional",    s:color06,      "")
call s:hi("Repeat",         s:color06,      "")
call s:hi("Label",          s:color06,      "")
call s:hi("Operator",       s:color03,      "")
call s:hi("Keyword",        s:color06,      "")
call s:hi("Exception",      s:color06,      "")

" include, define, #if and etc.
call s:hi("PreProc",        s:color04,      "")
call s:hi("Include",        s:color04,      "")
call s:hi("Define",         s:color04,      "")
call s:hi("Macro",          s:color04,      "")
call s:hi("PreCondit",      s:color04,      "")

" int, long, char, etc.
call s:hi("Type",           s:color02,      "")
call s:hi("StorageClass",   s:color02,      "")
call s:hi("Structure",      s:color02,      "")
call s:hi("Typedef",        s:color02,      "")

" special
call s:hi("Special",        s:color04,      "")
call s:hi("SpecialChar",    s:color04,      "")
call s:hi("Tag",            s:color04,      "")
call s:hi("Delimiter",      s:color04,      "")
call s:hi("Comment",        s:com,          "")
call s:hi("SpecialComment", s:color04,      "")
call s:hi("Debug",          s:color04,      "")
call s:hi("NonText",        s:bg_l,         "")

"
call s:hi("Underlined",     s:color00,      "")
call s:hi("Error",          s:color00,      s:bg)
call s:hi("Todo",           s:fg_l,         s:bg_sel)

"""""""""""""""""""""""""""""""""""""""""""""""
" ui
"""""""""""""""""""""""""""""""""""""""""""""""

call s:hi("Normal",         s:fg,           s:bg)

" status line
call s:hi("StatusLine",     s:bg_l,         s:fg)
call s:hi("StatusLineNC",   s:bg_sel,       s:fg)

" Pmenu
call s:hi("Pmenu",          s:fg_l,         s:bg_l)
call s:hi("PmenuSel",       s:fg_d,         s:bg_sel)
call s:hi("PmenuSbar",      s:bg_sel,       s:bg_sel)
call s:hi("PmenuTmumb",     s:bg_sel,       s:bg_sel)

" Search
call s:hi("IncSearch",      s:fg_l,         s:color01)
call s:hi("Search",         s:fg_l,         s:color02)

" Fold
call s:hi("Folded",         "",             s:bg_sel)
call s:hi("FoldColumn",     "",             s:bg_sel)

" Cursor
call s:hi("CursorColumn",   "",             s:bg_l)
call s:hi("CursorLine",     "",             s:bg_l)
call s:hi("ColorColumn",    "",             s:bg_l)
call s:hi("Cursor",         "",             s:bg_l)

" Messages
"
call s:hi("WarningMsg",     s:color00,      s:bg_l)
call s:hi("ErrorMsg",       s:color00,      s:bg_l)
call s:hi("MoreMsg",        s:com,          s:bg_l)
call s:hi("ModeMsg",        s:com,          s:bg_l)
call s:hi("Title",          s:color05,      "")
call s:hi("Question",       s:color05,      s:bg)

call s:hi("WildMenu",       s:com,      s:color05)

" Visual
call s:hi("Visual",         s:fg_l,         s:bg_sel)
call s:hi("VisualNOS",      s:fg_l,         s:color00)

" Split
call s:hi("VertSplit",      s:bg,           s:bg_sel)

" Ex
call s:hi("Directory",      s:color01,      "")

" NR
call s:hi("LineNr",         s:com,           s:bg)
call s:hi("CursorLineNR",   s:color00,      s:bg_l)
call s:hi("SignColumn",     s:fg_d,         s:bg)

call s:hi("Conceal",        s:color05,      s:bg)
call s:hi("MatchParen",     s:color00,      "")

" Diff
call s:hi("DiffDelete", "", s:color00)
call s:hi("DiffAdd", "", s:color01)
call s:hi("DiffText", "", s:color02)
call s:hi("DiffChange", "", s:color03)
