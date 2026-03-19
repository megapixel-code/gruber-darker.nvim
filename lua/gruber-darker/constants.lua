local M = {}

local DEFAULT_SETTINGS = {
   colors = {
      fg              = "#e4e4ef",
      fg_plus_1       = "#f4f4ff",
      fg_plus_2       = "#f5f5f5",
      white           = "#ffffff",
      black           = "#000000",
      bg_minus_1      = "#101010",
      bg              = "#181818",
      bg_plus_1       = "#282828",
      bg_plus_2       = "#453d41",
      bg_plus_3       = "#484848",
      bg_plus_4       = "#52494e",
      red_minus_1     = "#c73c3f",
      red             = "#f43841",
      red_plus_1      = "#ff4f58",
      green           = "#73c936",
      yellow          = "#ffdd33",
      brown           = "#cc8c3c",
      quartz          = "#95a99f",
      niagara_minus_2 = "#303540",
      niagara_minus_1 = "#565f73",
      niagara         = "#96a6c8",
      wisteria        = "#9e95c7",
   },
}

M._DEFAULT_SETTINGS = DEFAULT_SETTINGS
M.current = M._DEFAULT_SETTINGS

M.set_opts = function( opts )
   M.current = vim.tbl_deep_extend( "force", vim.deepcopy( M.current ), opts or {} )
end

return M
