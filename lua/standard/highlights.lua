local M = {}

---@param group string The highlight group name
---@param opts HighlightOptions The highlight options
local highlight = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

---@param colors ThemeColors The color palette
---@param _opts? Options Set-up options
M.set = function(colors, _opts)
  highlight("Boolean", { fg = colors.syntax.boolean, bg = "NONE" })
  highlight("Character", { fg = colors.syntax.string, bg = "NONE" })
  highlight("ColorColumn", { fg = "NONE", bg = colors.interface.cursorline })
  highlight("Comment", { fg = colors.syntax.comment, bg = "NONE", italic = true })
  highlight("Conceal", { fg = colors.intent.disabled, bg = "NONE" })
  highlight("Conditional", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Constant", { fg = colors.syntax.constant, bg = "NONE" })
  highlight("CurSearch", { fg = "NONE", bg = colors.interface.current })
  highlight("Cursor", { fg = colors.background, bg = colors.foreground })
  highlight("CursorColumn", { fg = "NONE", bg = colors.interface.cursorline })
  highlight("CursorLine", { bg = colors.interface.cursorline })
  highlight("CursorLineNr", { fg = colors.foreground, bg = "NONE" })
  highlight("Debug", { fg = colors.foreground, bg = "NONE" })
  highlight("Define", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Delimiter", { fg = colors.foreground, bg = "NONE" })
  highlight("DiffAdd", { fg = "NONE", bg = colors.diff.add.bg })
  highlight("DiffChange", { fg = "NONE", bg = colors.diff.modify.bg })
  highlight("DiffDelete", { fg = "NONE", bg = colors.diff.delete.bg })
  highlight("DiffText", { fg = "NONE", bg = colors.diff.modify_highlight.bg })
  highlight("Directory", { fg = colors.intent.info, bg = "NONE" })
  highlight("EndOfBuffer", { fg = colors.background, bg = "NONE" })
  highlight("Error", { fg = colors.intent.error, bg = colors.background, undercurl = true, sp = colors.intent.error })
  highlight("ErrorMsg", { fg = colors.intent.error, bg = colors.background })
  highlight("Exception", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Float", { fg = colors.syntax.number, bg = "NONE" })
  highlight("FoldColumn", { fg = colors.foreground, bg = colors.background })
  highlight("Folded", { fg = "NONE", bg = colors.interface.border })
  highlight("Function", { fg = colors.syntax.func, bg = "NONE" })
  highlight("Identifier", { fg = colors.syntax.variable, bg = "NONE" })
  highlight("Ignore", { fg = colors.foreground, bg = "NONE" })
  highlight("IncSearch", { fg = "NONE", bg = colors.interface.search })
  highlight("Include", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Keyword", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Label", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("LineNr", { fg = colors.intent.disabled, bg = colors.background })
  highlight("Macro", { fg = colors.syntax.decorator, bg = "NONE" })
  highlight("MatchParen", { link = "Search" })
  highlight("ModeMsg", { fg = colors.foreground, bg = colors.interface.border })
  highlight("MoreMsg", { fg = colors.foreground, bg = colors.interface.border })
  highlight("NonText", { fg = colors.syntax.delimiter, bg = "NONE" })
  highlight("Normal", { fg = colors.foreground, bg = colors.background })
  highlight("Number", { fg = colors.syntax.number, bg = "NONE" })
  highlight("Operator", { fg = colors.syntax.operator, bg = "NONE" })
  highlight("Pmenu", { fg = colors.foreground, bg = colors.background })
  highlight("PmenuSbar", { bg = colors.interface.border })
  highlight("PmenuSel", { link = "CursorLine" })
  highlight("PmenuThumb", { fg = colors.interface.border_highlight, bg = colors.interface.border_highlight })
  highlight("PreProc", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Question", { fg = colors.intent.info, bg = colors.background })
  highlight("Repeat", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Search", { fg = "NONE", bg = colors.interface.search })
  highlight("SignColumn", { fg = "NONE", bg = colors.background })
  highlight("Special", { fg = colors.syntax.builtin, bg = "NONE" })
  highlight("SpecialChar", { fg = colors.foreground, bg = "NONE" })
  highlight("SpecialComment", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("SpecialKey", { fg = colors.intent.info, bg = "NONE" })
  highlight("Statement", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("StatusLine", { fg = colors.foreground, bg = colors.interface.border })
  highlight("StatusLineNC", { fg = colors.foreground, bg = colors.interface.border })
  highlight("StorageClass", { fg = colors.syntax.type, bg = "NONE" })
  highlight("String", { fg = colors.syntax.string, bg = "NONE" })
  highlight("Structure", { fg = colors.syntax.type, bg = "NONE" })
  highlight("TabLine", { fg = colors.foreground, bg = colors.interface.border })
  highlight("TabLineFill", { fg = colors.foreground, bg = colors.background })
  highlight("TabLineSel", { fg = colors.foreground, bg = colors.interface.cursorline })
  highlight("Tag", { fg = colors.foreground, bg = "NONE" })
  highlight("Title", { fg = colors.foreground, bg = "NONE", bold = true })
  highlight("Todo", { fg = colors.intent.warning, bg = colors.background, bold = true })
  highlight("Type", { fg = colors.syntax.type, bg = "NONE" })
  highlight("Typedef", { fg = colors.syntax.type, bg = "NONE" })
  highlight("Underlined", { fg = "NONE", bg = "NONE", underline = true })
  highlight("VertSplit", { fg = colors.interface.border })
  highlight("Visual", { fg = "NONE", bg = colors.interface.selection })
  highlight("VisualNOS", { fg = "NONE", bg = colors.interface.selection })
  highlight("WarningMsg", { fg = colors.intent.warning, bg = colors.background, bold = true })
  highlight("WildMenu", { fg = "NONE", bg = colors.background })
  highlight("WinSeparator", { link = "VertSplit" })

  -- Spell and whitespace
  highlight("SpellBad", { fg = "NONE", undercurl = true, sp = colors.intent.error })
  highlight("SpellCap", { fg = "NONE", undercurl = true, sp = colors.intent.warning })
  highlight("SpellLocal", { fg = "NONE", undercurl = true, sp = colors.intent.info })
  highlight("SpellRare", { fg = "NONE", undercurl = true, sp = colors.intent.hint })
  highlight("Whitespace", { fg = colors.syntax.comment })

  -- Floating and window bar
  highlight("FloatBorder", { fg = colors.interface.border })
  highlight("NormalFloat", { bg = colors.background })
  highlight("WinBar", { fg = colors.foreground, bg = colors.background, bold = true })
  highlight("WinBarNc", { fg = colors.foreground, bg = colors.background })

  -- Quick-fix
  highlight("QuickFixLine", { bold = true })

  -- Treesitter
  highlight("@boolean", { fg = colors.syntax.boolean, bg = "NONE" })
  highlight("@character", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@comment", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("@conceal", { link = "Conceal" })
  highlight("@constant", { fg = colors.syntax.constant, bg = "NONE" })
  highlight("@constant.builtin", { fg = colors.syntax.builtin, bg = "NONE" })
  highlight("@constructor", { link = "Type" })
  highlight("@decorator", { fg = colors.syntax.decorator, bg = "NONE" })
  highlight("@diff.delta", { link = "DiffChange" })
  highlight("@diff.minus", { link = "DiffDelete" })
  highlight("@diff.plus", { link = "DiffAdd" })
  highlight("@error", { fg = colors.intent.error, bg = "NONE" })
  highlight("@event", { link = "Identifier" })
  highlight("@function", { fg = colors.syntax.func, bg = "NONE" })
  highlight("@interface", { link = "Identifier" })
  highlight("@keyword", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("@modifier", { link = "Identifier" })
  highlight("@number", { fg = colors.syntax.number, bg = "NONE" })
  highlight("@punctuation.bracket", { fg = colors.syntax.punctuation, bg = "NONE" })
  highlight("@punctuation.delimiter", { fg = colors.syntax.delimiter, bg = "NONE" })
  highlight("@punctuation.special", { fg = colors.syntax.punctuation, bg = "NONE" })
  highlight("@regexp", { fg = colors.intent.error, bg = "NONE" })
  highlight("@string", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@string.escape", { fg = colors.syntax.string, bg = "NONE", bold = true })
  highlight("@structure", { fg = colors.syntax.variable, bg = "NONE" })
  highlight("@tag", { fg = colors.syntax.tag, bg = "NONE" })
  highlight("@tag.attribute", { fg = colors.syntax.variable, bg = "NONE" })
  highlight("@tag.builtin", { fg = colors.syntax.builtin, bg = "NONE" })
  highlight("@tag.delimiter", { fg = colors.syntax.delimiter, bg = "NONE" })
  highlight("@text", { fg = colors.foreground, bg = "NONE" })
  highlight("@text.reference", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@type", { fg = colors.syntax.type, bg = "NONE" })
  highlight("@type.builtin", { fg = colors.syntax.builtin, bg = "NONE" })
  highlight("@type.qualifier", { fg = colors.syntax.tag, bg = "NONE" })
  highlight("@variable", { fg = colors.syntax.variable, bg = "NONE" })

  -- Treesitter for markup
  highlight("@markup.heading", { fg = colors.markup.heading, bg = "NONE", bold = true })
  highlight("@markup.italic", { fg = "NONE", bg = "NONE", italic = true })
  highlight("@markup.link.label", { fg = "NONE", bg = "NONE" })
  highlight("@markup.link.url", { fg = colors.markup.href, bg = "NONE", underline = true, sp = colors.markup.link })
  highlight("@markup.raw", { fg = colors.markup.code, bg = "NONE" })
  highlight("@markup.strikethrough", { fg = "NONE", bg = "NONE", strikethrough = true })
  highlight("@markup.strong", { fg = "NONE", bg = "NONE", bold = true })
  highlight("@markup.underline", { fg = "NONE", bg = "NONE", underline = true })

  -- Treesitter for Markdown
  highlight("@markup.link.label.markdown_inline", { fg = colors.markup.link, bg = "NONE", underline = true, sp = colors.markup.link })
  highlight("@markup.link.markdown_inline", { fg = colors.markup.link, bg = "NONE", underline = true, sp = colors.markup.link })

  -- Neorg
  highlight("@neorg.headings.1.prefix", { link = "@markup.heading" })
  highlight("@neorg.headings.1.title", { link = "@markup.heading" })
  highlight("@neorg.headings.2.prefix", { link = "@markup.heading" })
  highlight("@neorg.headings.2.title", { link = "@markup.heading" })
  highlight("@neorg.headings.3.prefix", { link = "@markup.heading" })
  highlight("@neorg.headings.3.title", { link = "@markup.heading" })
  highlight("@neorg.headings.4.prefix", { link = "@markup.heading" })
  highlight("@neorg.headings.4.title", { link = "@markup.heading" })
  highlight("@neorg.headings.5.prefix", { link = "@markup.heading" })
  highlight("@neorg.headings.5.title", { link = "@markup.heading" })
  highlight("@neorg.headings.6.prefix", { link = "@markup.heading" })
  highlight("@neorg.headings.6.title", { link = "@markup.heading" })
  highlight("@neorg.links.description.norg", { fg = colors.markup.link, bg = "NONE", underline = true, sp = colors.markup.link })
  highlight("@neorg.markup.verbatim", { link = "@markup.raw" })

  -- Treesitter for TSX
  highlight("@lsp.typemod.variable.readonly.typescriptreact", { link = "@variable" })

  -- Treesitter for JSON
  highlight("@property.json", { fg = colors.syntax.key, bg = "NONE" })
  highlight("@property.jsonc", { fg = colors.syntax.key, bg = "NONE" })

  -- LSP semantic tokens
  highlight("@lsp.type.enumMember", { link = "@constant" })
  highlight("@lsp.type.keyword", { link = "@keyword" })
  highlight("@lsp.type.macro", { link = "@decorator" })
  highlight("@lsp.type.member", { link = "@function" })
  highlight("@lsp.type.type", { link = "@type" })
  highlight("@lsp.type.typeParameter", { link = "@type" })
  highlight("@lsp.typemod.keyword.controlFlow", { link = "Operator" })
  highlight("@lsp.typemod.property.readonly", { link = "@constant" })
  highlight("@lsp.typemod.type.defaultLibrary", { link = "@type.builtin" })
  highlight("@lsp.typemod.variable.constant", { link = "@constant" })
  highlight("@lsp.typemod.variable.readonly", { link = "@constant" })

  -- LSP diagnostics
  highlight("DiagnosticError", { fg = colors.intent.error, bg = "NONE" })
  highlight("DiagnosticHint", { fg = colors.intent.hint, bg = "NONE" })
  highlight("DiagnosticInfo", { fg = colors.intent.hint, bg = "NONE" })
  highlight("DiagnosticOk", { fg = colors.intent.success, bg = "NONE" })
  highlight("DiagnosticUnderlineError", { fg = "NONE", bg = "NONE", undercurl = true, sp = colors.intent.error })
  highlight("DiagnosticUnderlineHint", { fg = "NONE", bg = "NONE", undercurl = true, sp = colors.intent.hint })
  highlight("DiagnosticUnderlineInfo", { fg = "NONE", bg = "NONE", undercurl = true, sp = colors.intent.hint })
  highlight("DiagnosticUnderlineWarn", { fg = "NONE", bg = "NONE", undercurl = true, sp = colors.intent.warning })
  highlight("DiagnosticUnnecessary", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("DiagnosticWarn", { fg = colors.intent.warning, bg = "NONE" })

  -- LSP references
  highlight("LspReferenceRead", { fg = "NONE", bg = colors.interface.cursorline })
  highlight("LspReferenceText", { fg = "NONE", bg = colors.interface.cursorline })
  highlight("LspReferenceWrite", { fg = "NONE", bg = colors.interface.cursorline })

  -- visual-whitespace.nvim
  highlight("VisualNonText", { fg = colors.interface.selection_highlight, bg = colors.interface.selection })

  -- NeogitOrg/neogit
  highlight("NeogitActiveItem", { link = "CursorLine" })
  highlight("NeogitCursorLine", { bg = colors.background })
  highlight("NeogitDiffAdd", colors.diff.add)
  highlight("NeogitDiffAddCursor", { link = "NeogitDiffAddHighlight" })
  highlight("NeogitDiffAddHighlight", colors.diff.add_highlight)
  highlight("NeogitDiffContext", { fg = colors.foreground, bg = colors.background })
  highlight("NeogitDiffContextCursor", { link = "NeogitDiffContextHighlight" })
  highlight("NeogitDiffContextHighlight", { fg = colors.foreground, bg = colors.interface.cursorline })
  highlight("NeogitDiffDelete", colors.diff.delete)
  highlight("NeogitDiffDeleteCursor", { link = "NeogitDiffDeleteHighlight" })
  highlight("NeogitDiffDeleteHighlight", colors.diff.delete_highlight)
  highlight("NeogitDiffHeader", { bg = colors.background })
  highlight("NeogitDiffHeaderHighlight", { link = "NeogitDiffHeader" })
  highlight("NeogitHunkHeader", colors.diff.modify)
  highlight("NeogitHunkHeaderCursor", { link = "NeogitHunkHeaderHighlight" })
  highlight("NeogitHunkHeaderHighlight", colors.diff.modify_highlight)
  highlight("NeogitRemote", { fg = colors.markup.link })
  highlight("NeogitWinSeparator", { link = "WinSeparator" })

  -- Git gutter, Git signs
  highlight("GitGutterAdd", { fg = colors.diff.add_highlight.fg, bg = "NONE" })
  highlight("GitGutterChange", { fg = colors.diff.modify_highlight.fg, bg = "NONE" })
  highlight("GitGutterDelete", { fg = colors.diff.delete_highlight.fg, bg = "NONE" })
  highlight("GitSignsAdd", { fg = colors.diff.add_highlight.fg, bg = "NONE" })
  highlight("GitSignsAddLn", { fg = colors.background, bg = colors.diff.add_highlight.bg })
  highlight("GitSignsChange", { fg = colors.diff.modify_highlight.fg, bg = "NONE" })
  highlight("GitSignsChangeLn", { fg = colors.background, bg = colors.diff.modify_highlight.bg })
  highlight("GitSignsDelete", { fg = colors.diff.delete_highlight.fg, bg = "NONE" })
  highlight("GitSignsDeleteLn", { fg = colors.background, bg = colors.diff.delete_highlight.bg })

  -- Diffview
  highlight("DiffviewFolderName", { fg = colors.foreground, bg = "NONE" })
  highlight("DiffviewFolderSign", { link = "Directory" })

  -- Diffview compatibility
  highlight("diffAdded", { fg = colors.diff.add.fg, bg = "NONE" })
  highlight("diffChanged", { fg = colors.diff.modify.fg, bg = "NONE" })
  highlight("diffRemoved", { fg = colors.diff.delete.fg, bg = "NONE" })

  -- Neotest
  highlight("NeotestAdapterName", { fg = colors.foreground, bold = true })
  highlight("NeotestDir", { fg = colors.intent.info })
  highlight("NeotestExpandMarker", { fg = colors.interface.border })
  highlight("NeotestFailed", { fg = colors.intent.error })
  highlight("NeotestFile", { fg = colors.intent.info })
  highlight("NeotestFocused", { bold = true })
  highlight("NeotestIndent", { fg = colors.interface.border })
  highlight("NeotestMarked", { fg = colors.intent.progress, bold = true })
  highlight("NeotestNamespace", { fg = colors.syntax.keyword })
  highlight("NeotestPassed", { fg = colors.intent.success })
  highlight("NeotestRunning", { fg = colors.intent.progress })
  highlight("NeotestSkipped", { fg = colors.intent.info })
  highlight("NeotestTarget", { fg = colors.intent.hint })
  highlight("NeotestWatching", { fg = colors.intent.progress })
  highlight("NeotestWinSelect", { fg = colors.intent.info, bold = true })

  -- rcarriga/nvim-dap-ui
  -- Source: https://github.com/rcarriga/nvim-dap-ui/blob/master/lua/dapui/config/highlights.lua
  highlight("DapUIBreakpointsCurrentLine", { fg = colors.syntax.type, bold = true })
  highlight("DapUIBreakpointsDisabledLine", { fg = colors.intent.disabled })
  highlight("DapUIBreakpointsInfo", { fg = colors.intent.info })
  highlight("DapUIBreakpointsLine", { fg = colors.syntax.keyword })
  highlight("DapUIBreakpointsPath", { fg = colors.syntax.keyword })
  highlight("DapUICurrentFrameName", { fg = colors.syntax.type, bold = true })
  highlight("DapUIDecoration", { fg = colors.syntax.keyword })
  highlight("DapUIFloatBorder", { fg = colors.syntax.keyword })
  highlight("DapUILineNumber", { fg = colors.syntax.keyword })
  highlight("DapUIModifiedValue", { fg = colors.syntax.keyword, bold = true })
  highlight("DapUIPlayPause", { fg = colors.intent.success })
  highlight("DapUIPlayPauseNC", { fg = colors.intent.success })
  highlight("DapUIRestart", { fg = colors.intent.success })
  highlight("DapUIRestartNC", { fg = colors.intent.success })
  highlight("DapUIScope", { fg = colors.syntax.keyword })
  highlight("DapUISource", { fg = colors.intent.info })
  highlight("DapUIStepBack", { fg = colors.syntax.keyword })
  highlight("DapUIStepBackNC", { fg = colors.syntax.keyword })
  highlight("DapUIStepInto", { fg = colors.syntax.keyword })
  highlight("DapUIStepIntoNC", { fg = colors.syntax.keyword })
  highlight("DapUIStepOut", { fg = colors.syntax.keyword })
  highlight("DapUIStepOutNC", { fg = colors.syntax.keyword })
  highlight("DapUIStepOver", { fg = colors.syntax.keyword })
  highlight("DapUIStepOverNC", { fg = colors.syntax.keyword })
  highlight("DapUIStop", { fg = colors.intent.error })
  highlight("DapUIStopNC", { fg = colors.intent.error })
  highlight("DapUIStoppedThread", { fg = colors.syntax.keyword })
  highlight("DapUIThread", { fg = colors.syntax.type })
  highlight("DapUIType", { fg = colors.syntax.keyword })
  highlight("DapUIUnavailable", { fg = colors.intent.disabled })
  highlight("DapUIUnavailableNC", { fg = colors.intent.disabled })
  highlight("DapUIWatchesEmpty", { fg = colors.intent.disabled })
  highlight("DapUIWatchesError", { fg = colors.intent.error })
  highlight("DapUIWatchesValue", { fg = colors.syntax.constant })
  highlight("DapUIWinSelect", { fg = colors.syntax.keyword, bold = true })

  -- Telescope
  highlight("TelescopeMatching", { fg = colors.interface.match })
  highlight("TelescopeMultiSelection", { link = "CursorLine" })
  highlight("TelescopeNormal", { link = "Normal" })
  highlight("TelescopePreviewBorder", { link = "WinSeparator" })
  highlight("TelescopePromptBorder", { link = "WinSeparator" })
  highlight("TelescopePromptPrefix", { link = "Normal" })
  highlight("TelescopeResultsBorder", { link = "WinSeparator" })
  highlight("TelescopeSelection", { link = "CursorLine" })
  highlight("TelescopeTitle", { fg = colors.foreground, bold = true })

  -- Illuminate
  highlight("IlluminatedWordRead", { link = "Visual" })
  highlight("IlluminatedWordText", { link = "Visual" })
  highlight("IlluminatedWordWrite", { link = "Visual" })

  -- NvimTree
  highlight("NvimTreeCursorLine", { link = "CursorLine" })
  highlight("NvimTreeEmptyFolderName", { fg = colors.intent.disabled, bg = "NONE" })
  highlight("NvimTreeEndOfBuffer", { link = "EndOfBuffer" })
  highlight("NvimTreeFolderIcon", { link = "Directory" })
  highlight("NvimTreeFolderName", { fg = colors.foreground, bg = "NONE" })
  highlight("NvimTreeGitDeleted", { fg = colors.diff.delete.fg, bg = "NONE" })
  highlight("NvimTreeGitDirty", { fg = colors.diff.modify.fg, bg = "NONE" })
  highlight("NvimTreeGitIgnored", { fg = colors.intent.disabled, bg = "NONE" })
  highlight("NvimTreeGitMerge", { fg = colors.diff.modify.fg, bg = "NONE" })
  highlight("NvimTreeGitNew", { fg = colors.diff.add.fg, bg = "NONE" })
  highlight("NvimTreeGitRenamed", { fg = colors.diff.modify.fg, bg = "NONE" })
  highlight("NvimTreeGitStaged", { fg = colors.diff.add_highlight.fg, bg = "NONE" })
  highlight("NvimTreeImageFile", { fg = colors.syntax.tag, bg = "NONE" })
  highlight("NvimTreeIndentMarker", { fg = colors.intent.disabled, bg = "NONE" })
  highlight("NvimTreeNormal", { link = "Normal" })
  highlight("NvimTreeOpenedFolderName", { link = "NvimTreeFolderName" })
  highlight("NvimTreeRootFolder", { fg = colors.foreground, bg = "NONE", bold = true })
  highlight("NvimTreeSpecialFile", { fg = colors.syntax.builtin, bg = "NONE", underline = true })
  highlight("NvimTreeVertSplit", { link = "VertSplit" })

  -- Dropbar
  highlight("DropBarIconKindFolder", { link = "Directory" })

  -- Aerial
  highlight("AerialArrayIcon", { link = "@constant" })
  highlight("AerialBooleanIcon", { link = "@boolean" })
  highlight("AerialClassIcon", { link = "@type" })
  highlight("AerialConstantIcon", { link = "@constant" })
  highlight("AerialConstructorIcon", { link = "@constructor" })
  highlight("AerialEnumIcon", { link = "@type" })
  highlight("AerialEnumMemberIcon", { link = "@field" })
  highlight("AerialEventIcon", { link = "@type" })
  highlight("AerialFieldIcon", { link = "@field" })
  highlight("AerialFileIcon", { link = "@text.uri" })
  highlight("AerialFunctionIcon", { link = "@function" })
  highlight("AerialInterfaceIcon", { link = "@type" })
  highlight("AerialKeyIcon", { link = "@type" })
  highlight("AerialMethodIcon", { link = "@method" })
  highlight("AerialModuleIcon", { link = "@namespace" })
  highlight("AerialNamespaceIcon", { link = "@namespace" })
  highlight("AerialNullIcon", { link = "@type" })
  highlight("AerialNumberIcon", { link = "@number" })
  highlight("AerialObjectIcon", { link = "@type" })
  highlight("AerialOperatorIcon", { link = "@operator" })
  highlight("AerialPackageIcon", { link = "@namespace" })
  highlight("AerialPropertyIcon", { link = "@property" })
  highlight("AerialStringIcon", { link = "@string" })
  highlight("AerialStructIcon", { link = "@type" })
  highlight("AerialTypeParameterIcon", { link = "@type" })
  highlight("AerialVariableIcon", { link = "@constant" })
end

return M
