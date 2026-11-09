-- Inspired by Sublime Text's built-in Mariana color scheme.
vim.o.background = "dark"
vim.g.colors_name = "mariana"

local c = {
  bg = "#343d46", bg_dark = "#2f3740", bg_highlight = "#4f5b66",
  fg = "#d8dee9", comment = "#767c85", gutter = "#4f5b66",
  blue = "#6699cc", cyan = "#5fb3b3", green = "#99c794",
  orange = "#f99157", pink = "#c594c5", red = "#ec5f67", yellow = "#fac863",
}
local hi = vim.api.nvim_set_hl
local groups = {
  Normal = { fg = c.fg, bg = c.bg }, NormalFloat = { fg = c.fg, bg = c.bg_dark },
  NormalNC = { fg = c.fg, bg = c.bg_dark }, EndOfBuffer = { fg = c.bg, bg = c.bg },
  CursorLine = { bg = "#3e4852" }, CursorColumn = { bg = "#3e4852" },
  ColorColumn = { bg = "#3e4852" }, LineNr = { fg = c.gutter }, CursorLineNr = { fg = c.fg, bold = true },
  SignColumn = { bg = c.bg }, FoldColumn = { fg = c.gutter, bg = c.bg },
  Visual = { bg = c.bg_highlight }, Search = { fg = c.bg_dark, bg = c.yellow },
  IncSearch = { fg = c.bg_dark, bg = c.orange }, MatchParen = { fg = c.yellow, bold = true },
  Pmenu = { fg = c.fg, bg = c.bg_dark }, PmenuSel = { fg = c.fg, bg = c.bg_highlight },
  FloatBorder = { fg = c.bg_highlight, bg = c.bg_dark }, WinSeparator = { fg = c.bg_highlight },
  StatusLine = { fg = c.fg, bg = c.bg_dark }, StatusLineNC = { fg = c.comment, bg = c.bg_dark },
  TabLine = { fg = c.comment, bg = c.bg_dark }, TabLineSel = { fg = c.fg, bg = c.bg },
  Comment = { fg = c.comment, italic = true }, Constant = { fg = c.orange }, String = { fg = c.green },
  Character = { fg = c.green }, Number = { fg = c.orange }, Boolean = { fg = c.orange },
  Identifier = { fg = c.fg }, Function = { fg = c.blue }, Statement = { fg = c.pink },
  Conditional = { fg = c.pink }, Repeat = { fg = c.pink }, Keyword = { fg = c.pink },
  Operator = { fg = c.cyan }, Type = { fg = c.cyan }, Special = { fg = c.cyan },
  PreProc = { fg = c.pink }, Title = { fg = c.fg, bold = true }, Todo = { fg = c.orange, bold = true },
  DiagnosticError = { fg = c.red }, DiagnosticWarn = { fg = c.yellow },
  DiagnosticInfo = { fg = c.blue }, DiagnosticHint = { fg = c.cyan },
}
for name, opts in pairs(groups) do hi(0, name, opts) end

local links = {
  ["@comment"] = "Comment", ["@string"] = "String", ["@number"] = "Number",
  ["@boolean"] = "Boolean", ["@function"] = "Function", ["@function.call"] = "Function",
  ["@keyword"] = "Keyword", ["@keyword.function"] = "Keyword", ["@conditional"] = "Conditional",
  ["@repeat"] = "Repeat", ["@type"] = "Type", ["@type.builtin"] = "Type",
  ["@property"] = "Identifier", ["@variable"] = "Identifier", ["@operator"] = "Operator",
  ["@punctuation.special"] = "Special", ["@tag"] = "Special", ["@tag.attribute"] = "String",
  ["@markup.heading"] = "Title", ["@markup.link.url"] = "Function",
}
for from, to in pairs(links) do hi(0, from, { link = to }) end

vim.g.terminal_color_0 = "#2f3740"
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.blue
vim.g.terminal_color_5 = c.pink
vim.g.terminal_color_6 = c.cyan
vim.g.terminal_color_7 = c.fg
