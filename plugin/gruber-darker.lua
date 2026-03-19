-- Prevent load multiple times
if vim.g.loaded_gruber_darker then
   return
end

-- TODO:
-- vim.api.nvim_create_user_command( "ColorSkimerToggle", require( "color-skimer" ).toggle, {} )

vim.g.loaded_gruber_darker = 1
