
local M = {}

M.palette = {
  black   = "#0f0f0f",
  gray0   = "#141514",
  gray1   = "#1e1f1e",
  gray2   = "#272a28",
  gray3   = "#3b403c",
  gray4   = "#585f5b",
  gray5   = "#6c756f",
  gray6   = "#888e7b",
  gray7   = "#9a9c8b",
  gray8   = "#b6b69a",
  gray9   = "#d9cdb5",
  gray10  = "#e3d6c9",
  white   = "#f4decd",
  red     = "#f16e65",
  red_alt = "#ef968f",
  orange  = "#ef934d",
  orange_alt = "#f4b585",
  yellow  = "#efbf71",
  green   = "#7ec97e",
  green_alt = "#a4daa4",
  cyan    = "#7ec9a3",
  cyan_alt = "#abd4bf",
  blue    = "#71b4d6",
  blue_alt = "#b0d4e8",
  magenta = "#e28dc6",
  magenta_alt = "#ebadd6",
}

function M.setup()
  local c = M.palette

  vim.opt.termguicolors = true
  vim.g.colors_name = "darkterra"

  local groups = {
    Normal          = { fg = c.white, bg = c.black },
    NormalFloat     = { fg = c.white, bg = c.gray0 },
    FloatBorder     = { fg = c.gray4, bg = c.gray0 },
    SignColumn      = { bg = c.black },
    EndOfBuffer     = { fg = c.gray2 },
    LineNr          = { fg = c.gray4 },
    CursorLine      = { bg = c.gray1 },
    CursorLineNr    = { fg = c.orange, bold = true },
    Visual          = { bg = c.gray3 },
    Search          = { fg = c.black, bg = c.yellow },
    IncSearch       = { fg = c.black, bg = c.orange },
    MatchParen      = { fg = c.green, bold = true },
    WinSeparator    = { fg = c.gray3 },
    StatusLine      = { fg = c.white, bg = c.gray1 },
    StatusLineNC    = { fg = c.gray5, bg = c.gray0 },
    Pmenu           = { fg = c.white, bg = c.gray1 },
    PmenuSel        = { fg = c.black, bg = c.green },
    Directory       = { fg = c.blue },
    Title           = { fg = c.orange, bold = true },

    Comment         = { fg = c.gray5, italic = true },
    Constant        = { fg = c.cyan },
    String          = { fg = c.green_alt },
    Character       = { fg = c.green_alt },
    Number          = { fg = c.yellow },
    Boolean         = { fg = c.orange },
    Identifier      = { fg = c.white },
    Function        = { fg = c.blue },
    Statement       = { fg = c.magenta },
    Conditional     = { fg = c.magenta },
    Repeat          = { fg = c.magenta },
    Operator        = { fg = c.gray8 },
    Keyword         = { fg = c.magenta },
    Type            = { fg = c.cyan },
    Special         = { fg = c.orange_alt },
    PreProc         = { fg = c.orange },
    Error           = { fg = c.red, bold = true },
    Todo            = { fg = c.black, bg = c.yellow, bold = true },

    DiagnosticError = { fg = c.red },
    DiagnosticWarn  = { fg = c.yellow },
    DiagnosticInfo  = { fg = c.blue },
    DiagnosticHint  = { fg = c.cyan },
    Added           = { fg = c.green },
    Removed         = { fg = c.red },
    Changed         = { fg = c.orange },

    DiffAdd         = { fg = c.green_alt, bg = "#18251b" },
    DiffDelete      = { fg = c.red_alt, bg = "#291918" },
    DiffChange      = { bg = c.gray1 },
    DiffText        = { bg = c.gray3 },
  }

  for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Treesitter
  local treesitter = {
    ["@comment"] = groups.Comment,
    ["@string"] = groups.String,
    ["@number"] = groups.Number,
    ["@boolean"] = groups.Boolean,
    ["@function"] = groups.Function,
    ["@function.call"] = groups.Function,
    ["@keyword"] = groups.Keyword,
    ["@keyword.function"] = groups.Keyword,
    ["@type"] = groups.Type,
    ["@variable"] = groups.Identifier,
    ["@constant"] = groups.Constant,
    ["@operator"] = groups.Operator,
    ["@punctuation"] = { fg = c.gray7 },
    ["@property"] = { fg = c.cyan_alt },
    ["@tag"] = { fg = c.red_alt },
    ["@attribute"] = { fg = c.orange_alt },
  }

  for group, opts in pairs(treesitter) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M