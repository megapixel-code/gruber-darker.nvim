local M = {}

M.get_highlights = function( conf )
   local c = conf.colors

   local hl = {
      iblIndent = { fg = c.bg_plus_1 },
      IblWhitespace = { fg = c.bg },
   }

   return hl
end

return M
