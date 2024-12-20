local M = {}

local highlight = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

M.set = function(colors, _opts)
  highlight("Normal", { fg = colors.foreground, bg = colors.background })
  highlight("ColorColumn", { fg = "NONE", bg = colors.interface.selection })
  highlight("Cursor", { fg = colors.interface.cursor, bg = colors.interface.match })
  highlight("CursorLine", { bg = colors.interface.selection })
  highlight("CursorColumn", { fg = "NONE", bg = colors.interface.selection })
  highlight("Directory", { fg = colors.syntax.info, bg = "NONE" })
  highlight("DiffAdd", { fg = "NONE", bg = colors.diff.add.bg })
  highlight("DiffChange", { fg = "NONE", bg = colors.diff.modify.bg })
  highlight("DiffDelete", { fg = "NONE", bg = colors.diff.delete.bg })
  highlight("DiffText", { fg = "NONE", bg = colors.diff.modify_highlight.bg })
  highlight("EndOfBuffer", { fg = colors.background, bg = "NONE" })
  highlight("ErrorMsg", { fg = colors.intent.error, bg = colors.background })
  highlight("VertSplit", { fg = colors.interface.border })
  highlight("WinSeparator", { link = "VertSplit" })
  highlight("Folded", { fg = "NONE", bg = colors.interface.border })
  highlight("FoldColumn", { fg = colors.foreground, bg = colors.background })
  highlight("SignColumn", { fg = "NONE", bg = colors.background })
  highlight("Search", { fg = "NONE", bg = colors.interface.reselection })
  highlight("CurSearch", { fg = colors.background, bg = colors.interface.current })
  highlight("IncSearch", { fg = "NONE", bg = colors.interface.reselection })
  highlight("LineNr", { fg = colors.intent.disabled, bg = colors.background })
  highlight("CursorLineNr", { fg = colors.syntax.info, bg = colors.background })
  highlight("MatchParen", { link = "Search" })
  highlight("ModeMsg", { fg = colors.foreground, bg = colors.interface.border })
  highlight("MoreMsg", { fg = colors.foreground, bg = colors.interface.border })
  highlight("NonText", { fg = colors.interface.border, bg = "NONE" })
  highlight("Pmenu", { fg = colors.foreground, bg = colors.background })
  highlight("PmenuSel", { link = "CursorLine" })
  highlight("PmenuSbar", { bg = colors.interface.border })
  highlight("PmenuThumb", { fg = colors.interface.reborder, bg = colors.interface.reborder })
  highlight("Question", { fg = colors.syntax.info, bg = colors.background })
  highlight("SpecialKey", { fg = colors.syntax.info, bg = "NONE" })
  highlight("StatusLine", { fg = colors.foreground, bg = colors.interface.border })
  highlight("StatusLineNC", { fg = colors.foreground, bg = colors.interface.border })
  highlight("TabLine", { fg = colors.foreground, bg = colors.interface.border })
  highlight("TabLineFill", { fg = colors.foreground, bg = colors.background })
  highlight("TabLineSel", { fg = colors.foreground, bg = colors.interface.selection })
  highlight("Title", { fg = colors.foreground, bg = "NONE", bold = true })
  highlight("Visual", { fg = "NONE", bg = colors.interface.selection })
  highlight("VisualNOS", { fg = "NONE", bg = colors.interface.selection })
  highlight("WarningMsg", { fg = colors.intent.warning, bg = colors.background, bold = true })
  highlight("WildMenu", { fg = "NONE", bg = colors.background })
  highlight("Comment", { fg = colors.syntax.comment, bg = "NONE", italic = true })
  highlight("Constant", { fg = colors.syntax.constant, bg = "NONE" })
  highlight("String", { fg = colors.syntax.string, bg = "NONE" })
  highlight("Character", { fg = colors.syntax.string, bg = "NONE" })
  highlight("Number", { fg = colors.syntax.number, bg = "NONE" })
  highlight("Boolean", { fg = colors.syntax.boolean, bg = "NONE" })
  highlight("Float", { fg = colors.syntax.number, bg = "NONE" })
  highlight("Identifier", { fg = colors.syntax.variable, bg = "NONE" })
  highlight("Function", { fg = colors.syntax.func, bg = "NONE" })
  highlight("Statement", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Conditional", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Repeat", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Label", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Operator", { fg = colors.syntax.operator, bg = "NONE" })
  highlight("Keyword", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Exception", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("PreProc", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Include", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Define", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Macro", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Type", { fg = colors.syntax.type, bg = "NONE" })
  highlight("StorageClass", { fg = colors.syntax.type, bg = "NONE" })
  highlight("Structure", { fg = colors.syntax.type, bg = "NONE" })
  highlight("Typedef", { fg = colors.syntax.type, bg = "NONE" })
  highlight("Special", { fg = colors.syntax.builtin, bg = "NONE" })
  highlight("SpecialChar", { fg = colors.foreground, bg = "NONE" })
  highlight("Tag", { fg = colors.foreground, bg = "NONE" })
  highlight("Delimiter", { fg = colors.foreground, bg = "NONE" })
  highlight("SpecialComment", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("Debug", { fg = colors.foreground, bg = "NONE" })
  highlight("Underlined", { fg = "NONE", bg = "NONE", underline = true })
  highlight("Conceal", { fg = colors.foreground, bg = colors.background })
  highlight("Ignore", { fg = colors.foreground, bg = "NONE" })
  highlight("Error", { fg = colors.intent.error, bg = colors.background, undercurl = true, sp = colors.intent.error })
  highlight("Todo", { fg = colors.intent.warning, bg = colors.background, bold = true })

  -- Spell and whitespace
  highlight("SpellBad", { fg = "NONE", undercurl = true, sp = colors.intent.error })
  highlight("SpellCap", { fg = "NONE", undercurl = true, sp = colors.intent.warning })
  highlight("SpellRare", { fg = "NONE", undercurl = true, sp = colors.intent.hint })
  highlight("SpellLocal", { fg = "NONE", undercurl = true, sp = colors.intent.info })
  highlight("Whitespace", { fg = colors.syntax.comment })

  -- Floating and window bar
  highlight("NormalFloat", { bg = colors.background })
  highlight("FloatBorder", { fg = colors.interface.border })
  highlight("WinBar", { fg = colors.foreground, bg = colors.background, bold = true })
  highlight("WinBarNc", { fg = colors.foreground, bg = colors.background })

  -- QuickFix and search
  highlight("QuickFixLine", { bold = true })

  -- Treesitter
  highlight("@boolean", { fg = colors.syntax.boolean, bg = "NONE" })
  highlight("@character", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@comment", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("@constant", { fg = colors.syntax.constant, bg = "NONE" })
  highlight("@constant.builtin", { fg = colors.syntax.builtin, bg = "NONE" })
  highlight("@constructor", { link = "Type" })
  highlight("@decorator", { link = "Identifier" })
  highlight("@diff.delta", { link = "DiffChange" })
  highlight("@diff.minus", { link = "DiffDelete" })
  highlight("@diff.plus", { link = "DiffAdd" })
  highlight("@error", { fg = colors.intent.error, bg = "NONE" })
  highlight("@event", { link = "Identifier" })
  highlight("@function", { fg = colors.syntax.func, bg = "NONE" })
  highlight("@interface", { link = "Identifier" })
  highlight("@keyword", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("@markup.heading", { fg = colors.syntax.tag, bg = "NONE", bold = true })
  highlight("@markup.italic", { fg = colors.foreground, bg = "NONE", italic = true })
  highlight("@markup.link.label", { fg = colors.syntax.variable, bg = "NONE" })
  highlight("@markup.link.url", { fg = colors.foreground, bg = "NONE" })
  highlight("@markup.list.checked", { link = "Todo" })
  highlight("@markup.list.unchecked", { link = "Todo" })
  highlight("@markup.raw", { fg = colors.foreground, bg = "NONE" })
  highlight("@markup.raw.markdown", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@markup.raw.markdown_inline", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@markup.strikethrough", { fg = colors.foreground, bg = "NONE", strikethrough = true })
  highlight("@markup.strong", { fg = colors.syntax.tag, bg = "NONE", bold = true })
  highlight("@markup.underline", { fg = colors.intent.warning, bg = "NONE", underline = true })
  highlight("@modifier", { link = "Identifier" })
  highlight("@number", { fg = colors.syntax.number, bg = "NONE" })
  highlight("@punctuation.bracket", { fg = colors.syntax.punctuation, bg = "NONE" })
  highlight("@punctuation.delimiter", { fg = colors.syntax.punctuation, bg = "NONE" })
  highlight("@punctuation.special", { fg = colors.syntax.punctuation, bg = "NONE" })
  highlight("@regexp", { fg = colors.intent.error, bg = "NONE" })
  highlight("@string", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@string.escape", { fg = colors.syntax.string, bg = "NONE", bold = true })
  highlight("@structure", { fg = colors.syntax.variable, bg = "NONE" })
  highlight("@tag", { fg = colors.syntax.tag, bg = "NONE" })
  highlight("@tag.attribute", { fg = colors.syntax.variable, bg = "NONE" })
  highlight("@tag.builtin", { fg = colors.syntax.builtin, bg = "NONE" })
  highlight("@tag.delimiter", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("@text", { fg = colors.foreground, bg = "NONE" })
  highlight("@text.reference", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@type", { fg = colors.syntax.type, bg = "NONE" })
  highlight("@type.builtin", { fg = colors.syntax.builtin, bg = "NONE" })
  highlight("@type.qualifier", { fg = colors.syntax.tag, bg = "NONE" })
  highlight("@variable", { fg = colors.syntax.variable, bg = "NONE" })

  -- Treesitter for TSX
  highlight("@lsp.typemod.variable.readonly.typescriptreact", { link = "@variable" })

  -- Markdown
  highlight("markdownBold", { fg = colors.syntax.info, bold = true })
  highlight("markdownCode", { fg = colors.syntax.string, bg = "NONE" })
  highlight("markdownRule", { fg = colors.syntax.info, bold = true })
  highlight("markdownCodeDelimiter", { fg = colors.foreground, bg = "NONE" })
  highlight("markdownHeadingDelimiter", { fg = colors.syntax.info, bg = "NONE" })
  highlight("markdownFootnote", { fg = colors.intent.warning, bg = "NONE" })
  highlight("markdownUrl", { fg = colors.foreground, bg = "NONE", underline = true })
  highlight("markdownLinkText", { fg = colors.intent.warning })

  -- LSP semantic tokens
  highlight("@lsp.type.comment.c", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("@lsp.type.comment.cpp", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("@lsp.type.enumMember", { link = "@constant" })
  highlight("@lsp.type.keyword", { link = "@keyword" })
  highlight("@lsp.type.macro", { link = "@constant" })
  highlight("@lsp.type.member", { link = "@function" })
  highlight("@lsp.type.type", { link = "@type" })
  highlight("@lsp.type.typeParameter", { link = "@type" })
  highlight("@lsp.typemod.keyword.controlFlow", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("@lsp.typemod.property.readonly", { link = "@constant" })
  highlight("@lsp.typemod.type.defaultLibrary", { link = "@type.builtin" })
  highlight("@lsp.typemod.variable.constant", { link = "@constant" })
  highlight("@lsp.typemod.variable.readonly", { link = "@constant" })

  -- LSP diagnostics
  highlight("DiagnosticOk", { fg = colors.intent.success, bg = "NONE" })
  highlight("DiagnosticError", { fg = colors.intent.error, bg = "NONE" })
  highlight("DiagnosticWarn", { fg = colors.intent.warning, bg = "NONE" })
  highlight("DiagnosticInfo", { fg = colors.intent.hint, bg = "NONE" })
  highlight("DiagnosticHint", { fg = colors.intent.hint, bg = "NONE" })
  highlight("DiagnosticUnnecessary", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("DiagnosticUnderlineError", { fg = "NONE", bg = "NONE", undercurl = true, sp = colors.intent.error })
  highlight("DiagnosticUnderlineWarn", { fg = "NONE", bg = "NONE", undercurl = true, sp = colors.intent.warning })
  highlight("DiagnosticUnderlineInfo", { fg = "NONE", bg = "NONE", undercurl = true, sp = colors.intent.hint })
  highlight("DiagnosticUnderlineHint", { fg = "NONE", bg = "NONE", undercurl = true, sp = colors.intent.hint })

  -- LSP references
  highlight("LspReferenceText", { fg = "NONE", bg = colors.interface.selection })
  highlight("LspReferenceRead", { fg = "NONE", bg = colors.interface.selection })
  highlight("LspReferenceWrite", { fg = "NONE", bg = colors.interface.selection })

  -- visual-whitespace.nvim
  highlight("VisualNonText", { fg = colors.syntax.comment, bg = colors.interface.selection })

  -- NeogitOrg/neogit
  highlight("NeogitActiveItem", { link = "CursorLine" })
  highlight("NeogitCursorLine", { bg = colors.background })
  highlight("NeogitDiffAdd", colors.diff.add)
  highlight("NeogitDiffAddHighlight", colors.diff.add_highlight)
  highlight("NeogitDiffContext", { fg = colors.foreground, bg = colors.background })
  highlight("NeogitDiffContextHighlight", { fg = colors.foreground, bg = colors.interface.selection })
  highlight("NeogitDiffDelete", colors.diff.delete)
  highlight("NeogitDiffDeleteHighlight", colors.diff.delete_highlight)
  highlight("NeogitDiffHeader", { bg = colors.background })
  highlight("NeogitDiffHeaderHighlight", { link = "NeogitDiffHeader" })
  highlight("NeogitHunkHeader", colors.diff.modify)
  highlight("NeogitHunkHeaderHighlight", colors.diff.modify_highlight)
  highlight("NeogitWinSeparator", { link = "WinSeparator" })
  -- Cursor line highlights cause way too much distraction; rely on the
  -- pointer and regular highlight colors:
  highlight("NeogitDiffAddCursor", { link = "NeogitDiffAddHighlight" })
  highlight("NeogitDiffContextCursor", { link = "NeogitDiffContextHighlight" })
  highlight("NeogitDiffDeleteCursor", { link = "NeogitDiffDeleteHighlight" })
  highlight("NeogitHunkHeaderCursor", { link = "NeogitHunkHeaderHighlight" })

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
  highlight("TelescopePromptBorder", { link = "WinSeparator" })
  highlight("TelescopeResultsBorder", { link = "WinSeparator" })
  highlight("TelescopePreviewBorder", { link = "WinSeparator" })
  highlight("TelescopeNormal", { link = "Normal" })
  highlight("TelescopeSelection", { link = "CursorLine" })
  highlight("TelescopeMultiSelection", { link = "CursorLine" })
  highlight("TelescopeMatching", { fg = colors.interface.match })
  highlight("TelescopePromptPrefix", { link = "Normal" })

  -- Illuminate
  highlight("IlluminatedWordText", { link = "Visual" })
  highlight("IlluminatedWordRead", { link = "IlluminatedWordText" })
  highlight("IlluminatedWordWrite", { link = "IlluminatedWordText" })

  -- NvimTree
  highlight("NvimTreeCursorLine", { link = "CursorLine" })
  highlight("NvimTreeEmptyFolderName", { fg = colors.intent.disabled, bg = "NONE" })
  highlight("NvimTreeEndOfBuffer", { link = "EndOfBuffer" })
  highlight("NvimTreeFolderIcon", { fg = colors.intent.info, bg = "NONE" })
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
  highlight("DropBarIconKindFolder", { link = "NvimTreeFolderIcon" })
end

return M
