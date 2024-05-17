require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 20,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- require("nvim-tree.api").tree.open({
-- 	path = nil,
-- 	current_window = false,
-- 	find_file = false,
-- 	update_root = false,
-- })

require("nvim-tree.api").tree.toggle({ focus = false })
