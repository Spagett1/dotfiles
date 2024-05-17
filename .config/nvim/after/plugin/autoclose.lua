require("autoclose").setup({
   keys = {
      ["$"] = { escape = true, close = true, pair = "$$", disabled_filetypes = {"sh"} },
   },
})
