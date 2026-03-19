local conf = require( "gruber-darker.constants" ).current

local M = {}

M.set_highlights = function()
   local c = conf.colors
   vim.g.terminal_color_0 = c.bg               -- black
   vim.g.terminal_color_1 = c.red              -- red
   vim.g.terminal_color_2 = c.green            -- green
   vim.g.terminal_color_3 = c.yellow           -- yellow
   vim.g.terminal_color_4 = c.quartz           -- blue
   vim.g.terminal_color_5 = c.wisteria         -- purple
   vim.g.terminal_color_6 = c.niagara          -- cyan
   vim.g.terminal_color_7 = c.fg               -- white
   vim.g.terminal_color_8 = c.bg_plus_2        -- gray
   vim.g.terminal_color_9 = c.red_minus_1      -- red
   vim.g.terminal_color_10 = c.green           -- green
   vim.g.terminal_color_11 = c.brown           -- yellow
   vim.g.terminal_color_12 = c.bg_plus_2       -- blue
   vim.g.terminal_color_13 = c.wisteria        -- purple
   vim.g.terminal_color_14 = c.niagara_minus_2 -- cyan
   vim.g.terminal_color_15 = c.white           -- white
end

return M
