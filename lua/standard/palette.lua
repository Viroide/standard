local M = {}

local accessible = {
  black = "#0b0c0c",
  blue = "#1d70b8",
  bright_purple = "#912b88",
  brown = "#b58840",
  dark_blue = "#003078",
  dark_grey = "#505a5f",
  green = "#00703c",
  light_blue = "#5694ca",
  light_green = "#85994b",
  light_grey = "#f3f2f1",
  light_pink = "#f499be",
  light_purple = "#6f72af",
  light_red = "#e28f84",
  light_yellow = "#fff4c2",
  mid_grey = "#b1b4b6",
  orange = "#f47738",
  pink = "#d53880",
  purple = "#4c2c92",
  red = "#d4351c",
  turquoise = "#28a197",
  white = "#ffffff",
  yellow = "#ffdd00",
}

local lowcontrast = {
  dark_red = "#6a3532",
  darker_red = "#452f2f",
  dark_green = "#145034",
  darker_green = "#1f4531",
  dark_yellow = "#6a5a2a",
  darker_yellow = "#4a4426",
  darker_grey = "#2a2c2e",
}

M.tokens = vim.tbl_deep_extend("force", lowcontrast, accessible)

M.colors = {
  dark = {
    background = accessible.black,
    foreground = accessible.light_grey,
    interface = {
      border = lowcontrast.darker_grey,
      border_highlight = accessible.dark_grey,
      current = accessible.brown,
      cursorline = lowcontrast.darker_grey,
      match = accessible.light_blue,
      search = lowcontrast.darker_yellow,
      selection = lowcontrast.darker_yellow,
      selection_highlight = lowcontrast.dark_yellow,
    },
    intent = {
      disabled = accessible.dark_grey,
      error = accessible.red,
      hint = accessible.light_blue,
      info = accessible.light_blue,
      progress = accessible.yellow,
      success = accessible.light_green,
      warning = accessible.orange,
    },
    diff = {
      add = { fg = accessible.light_green, bg = lowcontrast.darker_green },
      add_highlight = { fg = accessible.light_green, bg = lowcontrast.dark_green },
      delete = { fg = accessible.light_red, bg = lowcontrast.darker_red },
      delete_highlight = { fg = accessible.light_red, bg = lowcontrast.dark_red },
      modify = { fg = accessible.light_yellow, bg = lowcontrast.darker_yellow },
      modify_highlight = { fg = accessible.light_yellow, bg = lowcontrast.dark_yellow },
    },
    syntax = {
      boolean = accessible.light_purple,
      builtin = accessible.blue,
      comment = accessible.dark_grey,
      constant = accessible.light_purple,
      decorator = accessible.mid_grey,
      delimiter = accessible.dark_grey,
      func = accessible.light_blue,
      keyword = accessible.pink,
      number = accessible.light_purple,
      operator = accessible.pink,
      punctuation = accessible.mid_grey,
      string = accessible.light_green,
      tag = accessible.light_blue,
      type = accessible.turquoise,
      variable = accessible.light_grey,
    },
    markup = {
      code = accessible.light_green,
      heading = accessible.light_purple,
      href = accessible.blue,
      link = accessible.light_blue,
    },
  },
  light = {
    background = accessible.mid_grey,
    foreground = accessible.black,
    interface = {
      border = accessible.light_grey,
      border_highlight = accessible.mid_grey,
      current = accessible.brown,
      cursorline = accessible.light_grey,
      match = accessible.blue,
      search = accessible.light_yellow,
      selection = accessible.light_yellow,
      selection_highlight = accessible.yellow,
    },
    intent = {
      disabled = accessible.mid_grey,
      error = accessible.red,
      hint = accessible.blue,
      info = accessible.blue,
      progress = accessible.yellow,
      success = accessible.green,
      warning = accessible.orange,
    },
    diff = {
      add = { fg = accessible.green, bg = accessible.light_green },
      add_highlight = { fg = accessible.dark_green, bg = accessible.light_green },
      delete = { fg = accessible.red, bg = accessible.light_red },
      delete_highlight = { fg = accessible.dark_red, bg = accessible.light_red },
      modify = { fg = accessible.brown, bg = accessible.light_yellow },
      modify_highlight = { fg = accessible.dark_yellow, bg = accessible.light_yellow },
    },
    syntax = {
      boolean = accessible.purple,
      builtin = accessible.dark_blue,
      comment = accessible.mid_grey,
      constant = accessible.purple,
      decorator = accessible.dark_grey,
      delimiter = accessible.mid_grey,
      func = accessible.blue,
      keyword = accessible.bright_purple,
      number = accessible.purple,
      operator = accessible.bright_purple,
      punctuation = accessible.dark_grey,
      string = accessible.green,
      tag = accessible.blue,
      type = accessible.turquoise,
      variable = accessible.black,
    },
    markup = {
      code = accessible.green,
      heading = accessible.purple,
      href = accessible.dark_blue,
      link = accessible.blue,
    },
  },
}

return M
