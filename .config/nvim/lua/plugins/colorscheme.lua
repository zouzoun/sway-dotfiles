
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("darkterra").setup()
      end,
    },
  },
}
