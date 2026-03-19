local M = {}

M.get_highlights = function( conf )
   local c = conf.colors

   local hl = {
      TSAnnotation = { fg = c.fg },
      TSAttribute = { fg = c.red },
      TSBoolean = { fg = c.quartz },
      TSCharacter = { fg = c.fg },
      TSComment = { fg = c.brown },
      TSConstructor = { fg = c.fg },
      TSConditional = { fg = c.yellow },
      TSConstant = { fg = c.fg },
      TSConstBuiltin = { fg = c.fg },
      TSConstMacro = { fg = c.quartz },
      TSError = { fg = c.fg },
      TSException = { fg = c.fg },
      TSField = { fg = c.fg },
      TSFloat = { fg = c.fg },
      TSFunctionDefinition = { fg = c.quartz },
      TSFunction = { fg = c.fg },
      TSFuncBuiltin = { fg = c.yellow },
      TSFuncMacro = { fg = c.quartz },
      PreProc = { fg = c.quartz },
      Define = { fg = c.quartz },
      TSInclude = { fg = c.quartz },
      TSImport = { fg = c.brown },
      TSKeyword = { fg = c.yellow },
      TSKeywordFunction = { fg = c.yellow },
      TSKeywordOperator = { fg = c.fg },
      TSLabel = { fg = c.fg },
      TSMethod = { fg = c.fg },
      TSMethodDef = { fg = c.quartz },
      TSNamespace = { fg = c.quartz },
      TSNone = { fg = c.fg },
      TSNumber = { fg = c.fg },
      TSOperator = { fg = c.fg },
      TSParameter = { fg = c.fg },
      TSParameterReference = { fg = c.fg },
      TSProperty = { fg = c.fg },
      TSPunctDelimiter = { fg = c.fg },
      TSPunctBracket = { fg = c.fg },
      TSPunctSpecial = { fg = c.fg },
      TSRepeat = { fg = c.yellow },
      TSString = { fg = c.green },
      TSStringRegex = { fg = c.fg },
      TSStringEscape = { fg = c.fg },
      TSSymbol = { fg = c.fg },
      TSTag = { fg = c.fg },
      TSTagDelimiter = { fg = c.fg },
      TSText = { fg = c.fg },
      TSStrong = { fg = c.fg },
      TSEmphasis = { fg = c.fg },
      TSUnderline = { fg = c.fg },
      TSStrike = { fg = c.fg },
      TSTitle = { fg = c.fg },
      TSLiteral = { fg = c.fg },
      TSURI = { fg = c.fg },
      TSType = { fg = c.quartz },
      TSTypeDefinition = { fg = c.red },
      TSTypeBuiltin = { fg = c.fg },
      TSVariable = { fg = c.fg },
      TSVariableBuiltin = { fg = c.fg },

      TSDefinition = { fg = c.quartz },
      TSDefinitionUsage = { fg = c.quartz },
      TSCurrentScope = { fg = c.fg },

      Todo = { fg = c.wisteria },
      Definition = { fg = c.red },
   }

   if vim.fn.has( "nvim-0.8.0" ) then
      vim.api.nvim_set_hl( 0, "@comment",                     { link = "TSComment" } )
      vim.api.nvim_set_hl( 0, "@error",                       { link = "TSError" } )
      vim.api.nvim_set_hl( 0, "@none",                        { link = "TSNone" } )
      vim.api.nvim_set_hl( 0, "@preproc",                     { link = "PreProc" } )
      vim.api.nvim_set_hl( 0, "@define",                      { link = "Define" } )
      vim.api.nvim_set_hl( 0, "@operator",                    { link = "TSOperator" } )
      vim.api.nvim_set_hl( 0, "@punctuation.delimiter",       { link = "TSPunctDelimiter" } )
      vim.api.nvim_set_hl( 0, "@punctuation.bracket",         { link = "TSPunctBracket" } )
      vim.api.nvim_set_hl( 0, "@punctuation.special",         { link = "TSPunctSpecial" } )
      vim.api.nvim_set_hl( 0, "@string",                      { link = "TSString" } )
      vim.api.nvim_set_hl( 0, "@string.regex",                { link = "TSStringRegex" } )
      vim.api.nvim_set_hl( 0, "@string.escape",               { link = "TSStringEscape" } )
      vim.api.nvim_set_hl( 0, "@string.special",              { link = "SpecialChar" } )
      vim.api.nvim_set_hl( 0, "@character",                   { link = "TSCharacter" } )
      vim.api.nvim_set_hl( 0, "@character.special",           { link = "SpecialChar" } )
      vim.api.nvim_set_hl( 0, "@boolean",                     { link = "TSBoolean" } )
      vim.api.nvim_set_hl( 0, "@number",                      { link = "TSNumber" } )
      vim.api.nvim_set_hl( 0, "@float",                       { link = "TSFloat" } )
      vim.api.nvim_set_hl( 0, "@function",                    { link = "TSFunctionDeclaration" } )
      vim.api.nvim_set_hl( 0, "@function.call",               { link = "TSFunction" } )
      vim.api.nvim_set_hl( 0, "@function.builtin",            { link = "TSFuncBuiltin" } )
      vim.api.nvim_set_hl( 0, "@function.macro",              { link = "TSFuncMacro" } )
      vim.api.nvim_set_hl( 0, "@method",                      { link = "TSMethodDef" } )
      vim.api.nvim_set_hl( 0, "@method.call",                 { link = "TSMethod" } )
      vim.api.nvim_set_hl( 0, "@constructor",                 { link = "TSConstructor" } )
      vim.api.nvim_set_hl( 0, "@parameter",                   { link = "TSParameter" } )
      vim.api.nvim_set_hl( 0, "@keyword",                     { link = "TSKeyword" } )
      vim.api.nvim_set_hl( 0, "@keyword.function",            { link = "TSKeywordFunction" } )
      vim.api.nvim_set_hl( 0, "@keyword.operator",            { link = "TSKeywordOperator" } )
      vim.api.nvim_set_hl( 0, "@keyword.return",              { link = "TSKeyword" } )
      vim.api.nvim_set_hl( 0, "@conditional",                 { link = "TSConditional" } )
      vim.api.nvim_set_hl( 0, "@repeat",                      { link = "TSRepeat" } )
      vim.api.nvim_set_hl( 0, "@debug",                       { link = "Debug" } )
      vim.api.nvim_set_hl( 0, "@label",                       { link = "TSLabel" } )
      vim.api.nvim_set_hl( 0, "@include",                     { link = "TSInclude" } )
      vim.api.nvim_set_hl( 0, "@exception",                   { link = "TSException" } )
      vim.api.nvim_set_hl( 0, "@type",                        { link = "TSType" } )
      vim.api.nvim_set_hl( 0, "@type.builtin",                { link = "TSTypeBuiltin" } )
      vim.api.nvim_set_hl( 0, "@type.qualifier",              { link = "TSKeyword" } )
      vim.api.nvim_set_hl( 0, "@type.definition",             { link = "TSTypeDefinition" } )
      vim.api.nvim_set_hl( 0, "@storageclass",                { link = "StorageClass" } )
      vim.api.nvim_set_hl( 0, "@attribute",                   { link = "TSAttribute" } )
      vim.api.nvim_set_hl( 0, "@field",                       { link = "TSField" } )
      vim.api.nvim_set_hl( 0, "@property",                    { link = "TSProperty" } )
      vim.api.nvim_set_hl( 0, "@variable",                    { link = "TSVariable" } )
      vim.api.nvim_set_hl( 0, "@variable.builtin",            { link = "TSVariableBuiltin" } )
      vim.api.nvim_set_hl( 0, "@constant",                    { link = "TSConstant" } )
      vim.api.nvim_set_hl( 0, "@constant.builtin",            { link = "TSConstant" } )
      vim.api.nvim_set_hl( 0, "@constant.macro",              { link = "TSConstant" } )
      vim.api.nvim_set_hl( 0, "@namespace",                   { link = "TSNamespace" } )
      vim.api.nvim_set_hl( 0, "@symbol",                      { link = "TSSymbol" } )
      vim.api.nvim_set_hl( 0, "@text",                        { link = "TSText" } )
      vim.api.nvim_set_hl( 0, "@text.diff.add",               { link = "DiffAdd" } )
      vim.api.nvim_set_hl( 0, "@text.diff.delete",            { link = "DiffDelete" } )
      vim.api.nvim_set_hl( 0, "@text.strong",                 { link = "TSStrong" } )
      vim.api.nvim_set_hl( 0, "@text.emphasis",               { link = "TSEmphasis" } )
      vim.api.nvim_set_hl( 0, "@text.underline",              { link = "TSUnderline" } )
      vim.api.nvim_set_hl( 0, "@text.strike",                 { link = "TSStrike" } )
      vim.api.nvim_set_hl( 0, "@text.title",                  { link = "TSTitle" } )
      vim.api.nvim_set_hl( 0, "@text.literal",                { link = "TSLiteral" } )
      vim.api.nvim_set_hl( 0, "@text.uri",                    { link = "TSUri" } )
      vim.api.nvim_set_hl( 0, "@text.math",                   { link = "Number" } )
      vim.api.nvim_set_hl( 0, "@text.environment",            { link = "Macro" } )
      vim.api.nvim_set_hl( 0, "@text.environment.name",       { link = "Type" } )
      vim.api.nvim_set_hl( 0, "@text.reference",              { link = "TSParameterReference" } )
      vim.api.nvim_set_hl( 0, "@text.todo",                   { link = "Todo" } )
      vim.api.nvim_set_hl( 0, "@text.note",                   { link = "Tag" } )
      vim.api.nvim_set_hl( 0, "@text.warning",                { link = "DiagnosticWarn" } )
      vim.api.nvim_set_hl( 0, "@text.danger",                 { link = "DiagnosticError" } )
      vim.api.nvim_set_hl( 0, "@tag",                         { link = "TSTag" } )
      vim.api.nvim_set_hl( 0, "@tag.attribute",               { link = "TSAttribute" } )
      vim.api.nvim_set_hl( 0, "@tag.delimiter",               { link = "TSTagDelimiter" } )

      vim.api.nvim_set_hl( 0, "@function.method",             { link = "@method" } )
      vim.api.nvim_set_hl( 0, "@function.method.call",        { link = "@method.call" } )
      vim.api.nvim_set_hl( 0, "@comment.error",               { link = "@text.danger" } )
      vim.api.nvim_set_hl( 0, "@comment.warning",             { link = "@text.warning" } )
      vim.api.nvim_set_hl( 0, "@comment.hint",                { link = "DiagnosticHint" } )
      vim.api.nvim_set_hl( 0, "@comment.info",                { link = "DiagnosticInfo" } )
      vim.api.nvim_set_hl( 0, "@comment.todo",                { link = "@text.todo" } )
      vim.api.nvim_set_hl( 0, "@diff.plus",                   { link = "@text.diff.add" } )
      vim.api.nvim_set_hl( 0, "@diff.minus",                  { link = "@text.diff.delete" } )
      vim.api.nvim_set_hl( 0, "@diff.delta",                  { link = "DiffChange" } )
      vim.api.nvim_set_hl( 0, "@string.special.url",          { link = "@text.uri" } )
      vim.api.nvim_set_hl( 0, "@keyword.directive",           { link = "@preproc" } )
      vim.api.nvim_set_hl( 0, "@keyword.directive.define",    { link = "@define" } )
      vim.api.nvim_set_hl( 0, "@keyword.storage",             { link = "@storageclass" } )
      vim.api.nvim_set_hl( 0, "@keyword.conditional",         { link = "@conditional" } )
      vim.api.nvim_set_hl( 0, "@keyword.debug",               { link = "@debug" } )
      vim.api.nvim_set_hl( 0, "@keyword.exception",           { link = "@exception" } )
      vim.api.nvim_set_hl( 0, "@keyword.import",              { link = "TSImport" } )
      vim.api.nvim_set_hl( 0, "@keyword.repeat",              { link = "@repeat" } )
      vim.api.nvim_set_hl( 0, "@variable.parameter",          { link = "@parameter" } )
      vim.api.nvim_set_hl( 0, "@variable.member",             { link = "@field" } )
      vim.api.nvim_set_hl( 0, "@module",                      { link = "@namespace" } )
      vim.api.nvim_set_hl( 0, "@module.builtin",              { link = "@namespace" } )
      vim.api.nvim_set_hl( 0, "@number.float",                { link = "@float" } )
      vim.api.nvim_set_hl( 0, "@string.special.symbol",       { link = "@symbol" } )
      vim.api.nvim_set_hl( 0, "@string.regexp",               { link = "@string.regex" } )
      vim.api.nvim_set_hl( 0, "@markup.strong",               { link = "@text.strong" } )
      vim.api.nvim_set_hl( 0, "@markup.italic",               { link = "Italic" } )
      vim.api.nvim_set_hl( 0, "@markup.link",                 { link = "@text.link" } )
      vim.api.nvim_set_hl( 0, "@markup.strikethrough",        { link = "@text.strikethrough" } )
      vim.api.nvim_set_hl( 0, "@markup.heading",              { link = "@text.title" } )
      vim.api.nvim_set_hl( 0, "@markup.raw",                  { link = "@text.literal" } )
      vim.api.nvim_set_hl( 0, "@markup.link",                 { link = "@text.reference" } )
      vim.api.nvim_set_hl( 0, "@markup.link.url",             { link = "@text.uri" } )
      vim.api.nvim_set_hl( 0, "@markup.link.label",           { link = "@string.special" } )
      vim.api.nvim_set_hl( 0, "@markup.list",                 { link = "@punctuation.special" } )

      vim.api.nvim_set_hl( 0, "@local.definition",            { link = "Definition" } )
      vim.api.nvim_set_hl( 0, "@local.definition.constant",   { link = "@local.definition" } )
      vim.api.nvim_set_hl( 0, "@local.definition.function",   { link = "@local.definition" } )
      vim.api.nvim_set_hl( 0, "@local.definition.method",     { link = "@local.definition" } )
      vim.api.nvim_set_hl( 0, "@local.definition.var",        { link = "@local.definition" } )
      vim.api.nvim_set_hl( 0, "@local.definition.parameter",  { link = "@local.definition" } )
      vim.api.nvim_set_hl( 0, "@local.definition.macro",      { link = "@local.definition" } )
      vim.api.nvim_set_hl( 0, "@local.definition.type",       { link = "@local.definition" } )
      vim.api.nvim_set_hl( 0, "@local.definition.field",      { link = "@local.definition" } )
      vim.api.nvim_set_hl( 0, "@local.definition.enum",       { link = "@local.definition" } )
      vim.api.nvim_set_hl( 0, "@local.definition.namespace",  { link = "@local.definition" } )
      vim.api.nvim_set_hl( 0, "@local.definition.import",     { link = "@local.definition" } )
      vim.api.nvim_set_hl( 0, "@local.definition.associated", { link = "@local.definition" } )
   end

   return hl
end

return M
