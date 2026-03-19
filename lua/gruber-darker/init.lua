local constants = require( "gruber-darker.constants" )

local M = {}


M.set_highlights = function()
   local hl_groups = require( "gruber-darker.groups" )
   local highlights = {}

   for _, hl_group in pairs( hl_groups ) do
      for hl, settings in pairs( hl_group ) do
         highlights[hl] = settings
      end
   end

   for hl, settings in pairs( highlights ) do
      vim.api.nvim_set_hl( 0, hl, settings )
   end
end

M._colorscheme = function()
   vim.cmd( "highlight clear" )
   if vim.fn.has( "syntax_on" ) then vim.cmd( "syntax reset" ) end
   vim.g.colors_name = "gruber-darker"

   require( "gruber-darker.terminal" ).set_highlights()
   M.set_highlights()
end

function M.setup( user_opts )
   constants.set_opts( user_opts )
end



return M
