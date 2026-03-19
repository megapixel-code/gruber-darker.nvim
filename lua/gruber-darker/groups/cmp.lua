local M = {}

M.get_highlights = function( conf )
   local c = conf.colors

   local hl = {
      CmpGhostText          = { fg = c.quartz },                     -- ghost text for completion
      CmpItemAbbr           = { fg = c.fg },                         -- abbreviation in completion menu
      CmpItemAbbrDeprecated = { fg = c.red, strikethrough = true },  -- deprecated items in completion menu
      CmpItemAbbrMatch      = { fg = c.wisteria, bold = conf.bold }, -- matched text in completion menu
      CmpItemAbbrMatchFuzzy = { fg = c.wisteria, bold = conf.bold }, -- fuzzy-matched text in completion menu
      CmpItemMenu           = { fg = c.wisteria, bold = conf.bold }, -- menu for completion items
      CmpItemKind           = { fg = c.quartz },                     -- kind of completion item
   }

   return hl
end

return M
