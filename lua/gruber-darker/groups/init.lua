local conf = require( "gruber-darker.constants" ).current

local function init( group )
   return require( "gruber-darker.groups." .. group ).get_highlights( conf )
end

return {
   syntax = init( "syntax" ),
   editor = init( "editor" ),
}
