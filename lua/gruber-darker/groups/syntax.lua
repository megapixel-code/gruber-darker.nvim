local M = {}

M.get_highlights = function( conf )
   local c = conf.colors

   local hl = {
      Boolean        = { fg = c.fg }, -- boolean constants
      Character      = { fg = c.fg }, -- character constants
      Comment        = { fg = c.fg }, -- comments
      Conditional    = { fg = c.fg }, -- conditionals
      Constant       = { fg = c.fg }, -- (preferred) any constant
      Define         = { fg = c.fg }, -- preprocessor '#define'
      Delimiter      = { fg = c.fg }, -- delimiter characters
      Error          = { bg = c.fg }, -- (preferred) any erroneous construct
      Exception      = { fg = c.fg }, -- 'try', 'catch', 'throw'
      Float          = { fg = c.fg }, -- float constants
      Function       = { fg = c.fg }, -- functions
      Identifier     = { fg = c.fg }, -- (preferred) any variable
      Include        = { fg = c.fg }, -- preprocessor '#include'
      Keyword        = { fg = c.fg }, -- any other keyword
      Label          = { fg = c.fg }, -- 'case', 'default', etc
      Macro          = { fg = c.fg }, -- macros
      Number         = { fg = c.fg }, -- number constant
      Operator       = { fg = c.fg }, -- '+', '*', 'sizeof' etc
      PreCondit      = { fg = c.fg }, -- preprocessor conditionals '#if', '#endif' etc
      PreProc        = { fg = c.fg }, -- (preferred) generic preprocessor
      Repeat         = { fg = c.fg }, -- loop keywords: 'for', 'while' etc
      Special        = { fg = c.fg }, -- (preferred) any special symbol
      SpecialChar    = { fg = c.fg }, -- special character in a constant
      SpecialComment = { fg = c.fg }, -- special things inside comments
      Statement      = { fg = c.fg }, -- (preferred) any statement
      StorageClass   = { fg = c.fg }, -- 'static', 'volatile' etc
      String         = { fg = c.fg }, -- string constants
      Structure      = { fg = c.fg }, -- 'struct', 'union', 'enum' etc
      Tag            = { fg = c.fg }, -- can use <C-]> on this
      Title          = { fg = c.fg },
      Todo           = { fg = c.fg }, -- (preferred) 'TODO' keywords in comments
      Type           = { fg = c.fg }, -- (preferred) 'int', 'long', 'char' etc
      Typedef        = { fg = c.fg }, -- 'typedef'
   }

   return hl
end

return M
