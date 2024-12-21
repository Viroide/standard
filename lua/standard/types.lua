---@class Options

---@class HighlightOptions
---@field fg? string Color in #rrggbb format or NONE
---@field bg? string Color in #rrggbb format or NONE
---@field sp? string Special color in #rrggbb format or NONE
---@field blend? integer Value between 0 and 100
---@field bold? boolean
---@field standout? boolean
---@field underline? boolean
---@field undercurl? boolean
---@field underdouble? boolean
---@field underdotted? boolean
---@field underdashed? boolean
---@field strikethrough? boolean
---@field italic? boolean
---@field reverse? boolean
---@field nocombine? boolean
---@field link? string Name of another highlight group to link to
---@field default? boolean Don't override existing definition
---@field ctermfg? string|integer Terminal color name or number
---@field ctermbg? string|integer Terminal color name or number
---@field cterm? table Terminal attributes, like GUI

---@class Colors
---@field black string
---@field blue string
---@field bright_purple string
---@field brown string
---@field dark_blue string
---@field dark_grey string
---@field green string
---@field light_blue string
---@field light_green string
---@field light_grey string
---@field light_pink string
---@field light_purple string
---@field light_red string
---@field light_yellow string
---@field mid_grey string
---@field orange string
---@field pink string
---@field purple string
---@field red string
---@field turquoise string
---@field white string
---@field yellow string

---@class LowContrastColors
---@field dark_green string
---@field dark_red string
---@field dark_yellow string
---@field darker_green string
---@field darker_grey string
---@field darker_red string
---@field darker_yellow string
---@field darkest_grey string

---@class InterfaceColors
---@field border string
---@field border_highlight string
---@field current string
---@field cursorline string
---@field match string
---@field search string
---@field selection string
---@field selection_highlight string

---@class IntentColors
---@field disabled string
---@field error string
---@field hint string
---@field info string
---@field progress string
---@field success string
---@field warning string

---@class DiffColors
---@field add HighlightOptions
---@field add_highlight HighlightOptions
---@field delete HighlightOptions
---@field delete_highlight HighlightOptions
---@field modify HighlightOptions
---@field modify_highlight HighlightOptions

---@class SyntaxColors
---@field boolean string
---@field builtin string
---@field comment string
---@field constant string
---@field decorator string
---@field delimiter string
---@field func string
---@field key string
---@field keyword string
---@field number string
---@field operator string
---@field punctuation string
---@field regexp string
---@field string string
---@field tag string
---@field type string
---@field variable string

---@class MarkupColors
---@field code string
---@field heading string
---@field href string
---@field link string

---@class ThemeColors
---@field background string
---@field foreground string
---@field interface InterfaceColors
---@field intent IntentColors
---@field diff DiffColors
---@field syntax SyntaxColors
---@field markup MarkupColors

---@class ColorScheme
---@field tokens table<string, string>
---@field colors { dark: ThemeColors, light: ThemeColors }
