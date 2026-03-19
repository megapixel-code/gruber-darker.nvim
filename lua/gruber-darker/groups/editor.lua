local M = {}

M.get_highlights = function( conf )
   local c = conf.colors

   local hl = {
      ColorColumn        = { bg = c.bg_plus_1 },           -- Used for the columns set with 'colorcolumn'
      Conceal            = { fg = c.func },                -- Placeholder characters substituted for concealed text (see 'conceallevel').
      CurSearch          = { fg = c.black, bg = c.white }, -- Current match for the last search pattern
      CursorColumn       = { bg = c.bg_plus_1 },           -- Screen-column at the cursor, when 'cursorcolumn' is set
      CursorLine         = { bg = c.bg_plus_1 },           -- Screen-line at the cursor, when 'cursorline' is set.
      CursorLineNr       = { fg = c.yellow },              -- Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or is "both", for the cursor line.
      Debug              = { fg = c.constant },            -- debugging statements
      debugPC            = { fg = c.bg, bg = c.fg },
      debugBreakpoint    = { fg = c.bg, bg = c.operator },
      Directory          = { fg = c.hint },        -- Directory names (and other special names in listings).
      OkMsg              = { fg = c.plus },
      redMsg             = { fg = c.red },         -- Error messages on the command line.
      EndOfBuffer        = { fg = c.bg_plus_2 },   -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
      FloatBorder        = { fg = c.floatBorder }, -- Border of floating windows.
      FloatTitle         = { fg = c.floatBorder }, -- Title of floating windows.
      FloatShadow        = { bg = c.bg_plus_3 },
      FloatShadowThrough = { bg = c.bg_plus_3 },
      Folded             = { fg = c.bg_plus_2, bg = conf.transparent and "none" or c.bg_plus_1 }, -- Line used for closed folds
      FoldColumn         = { fg = c.bg_plus_2 },                                                  -- 'foldcolumn'
      IncSearch          = { fg = c.black, bg = c.white },                                        -- 'incsearch' highlighting; also used for the text replaced with ":s///c".
      LineNr             = { fg = c.bg_plus_2 },                                                  -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
      MatchParen         = { fg = c.fg, bg = c.niagara },                                         -- Character under the cursor or just before it, if it is a paired bracket, and its match.
      MoreMsg            = { fg = c.func },                                                       -- |more-prompt|
      MsgSeparator       = { fg = c.string, bg = conf.transparent and "none" or c.bg_plus_1 },    -- Separator for scrolled messages |msgsep|.
      NonText            = { fg = c.bg_plus_2 },                                                  -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
      Normal             = { fg = c.yellow, bg = conf.transparent and "none" or c.bg },           -- Normal text.
      NormalFloat        = { fg = c.fg, bg = conf.transparent and "none" or c.bg },               -- Normal text in floating windows.
      ModeMsg            = { fg = c.string },                                                     -- 'showmode' message (e.g., "-- INSERT --").
      Pmenu              = { fg = c.fg },                                                         -- Popup menu: Normal item.
      PmenuSel           = { fg = c.constant, bg = c.bg_plus_1 },                                 -- Popup menu: Selected item, combined with hl-Pmenu
      PmenuThumb         = { bg = c.bg_plus_2 },                                                  -- Popup menu: Thumb of the scrollbar.
      PmenuBorder        = { fg = c.floatBorder },
      Question           = { fg = c.constant },                                                   -- |hit-enter| prompt and yes/no questions.
      QuickFixLine       = { bg = c.bg_plus_2 },                                                  -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
      qfred              = { fg = c.red },
      Search             = { fg = c.black, bg = c.white },                                        -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
      SignColumn         = { fg = c.fg },                                                         -- Column where |signs| are displayed.
      SpecialKey         = { fg = c.bg_plus_2 },                                                  -- Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
      SpellBad           = { sp = c.red, undercurl = true },                                      -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
      SpellCap           = { sp = c.delta, undercurl = true },                                    -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
      SpellLocal         = { sp = c.hint, undercurl = true },                                     -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
      SpellRare          = { sp = c.constant, undercurl = true },                                 -- Word that is recognized by the spellchecker as one that is hardly ever used.
      StatusLine         = { fg = c.fg, bg = conf.transparent and "none" or c.bg_plus_2 },        -- Status line of current window.
      StatusLineTerm     = { fg = c.fg, bg = conf.transparent and "none" or c.bg_plus_2 },        -- Status line of |terminal| window.
      StatusLineNC       = { fg = c.bg_plus_2 },                                                  -- Status line of non-current windows.
      StatusLineTermNC   = { fg = c.bg_plus_2 },                                                  -- Status line of non-current |terminal| windows.
      Substitute         = { fg = c.type, bg = c.bg_plus_3 },                                     -- |:substitute| replacement text highlighting.
      TabLine            = conf.transparent and { fg = c.bg_plus_2 } or { bg = c.bg_plus_2 },     -- Tab pages line, not active tab page label.
      TabLineSel         = conf.transparent and {} or { fg = c.bg_plus_2, bg = c.fg },            -- Tab pages line, active tab page label.
      Visual             = { bg = c.bg_plus_3 },                                                  -- Visual mode selection.
      VisualNOS          = { bg = c.bg_plus_2, underline = true },                                -- Visual mode selection when vim is "Not Owning the Selection".
      WarningMsg         = { fg = c.brown },                                                      -- Warning messages.
      Whitespace         = { fg = c.bg_plus_1 },                                                  -- "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.
      WildMenu           = { fg = c.bg, bg = c.func },                                            -- Current match in 'wildmenu' completion.
      WinSeparator       = { fg = c.floatBorder },                                                -- Separators between window splits.
      WinBar             = { fg = c.fg, bg = c.bg_plus_2 },                                       -- Window bar of current window.
      WinBarNC           = { fg = c.bg_plus_2 },                                                  -- Window bar of not-current windows.
   }

   return hl
end

return M
