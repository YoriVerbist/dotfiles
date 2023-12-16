local Util = require("lazyvim.util")

return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    version = false, -- telescope did only one release, so use HEAD for now
    keys = function()
      local in_buffer_dir = function(builtin)
        return function()
          return Util.telescope(builtin, { cwd = require("telescope.utils").buffer_dir() })()
        end
      end
      return {
        { "<C-p>", Util.telescope("files", { cwd = false }), desc = "Find Files in git root" },
        { "<leader>pf", Util.telescope("files"), desc = "Find files in LSP root" },
        { "<leader>ps", Util.telescope("live_grep", { cwd = false }), desc = "Live grep in git root" },
        { "<leader>H", Util.telescope("help_tags"), desc = "Help tags" },
        { "<leader>mq", Util.telescope("commands"), desc = "Commands" },
        { "<leader>mn", Util.telescope("man_pages"), desc = "Man pages" },
        { "<leader>qf", Util.telescope("quickfix"), desc = "Quickfix" },
        -- { "<leader>mp", ":Telescope yank_history<cr>", desc = "Yank history" },
        -- { "<leader>ma", ":Telescope macros<cr>", desc = "Macros" },
        { "<leader>mo", ":Telescope notify<cr>", desc = "Notifications" },
        -- lsp
        { "gd", Util.telescope("lsp_definitions"), desc = "LSP definitions" },
        { "gr", Util.telescope("lsp_references"), desc = "LSP references" },
      }
    end,
    opts = function(_, opts)
      opts.defaults.mappings = {
        i = {
          ["<C-e>"] = "move_selection_previous",
          -- ["<esc>"] = "close",
          ["<C-t>"] = function(...)
            return require("trouble.providers.telescope").open_with_trouble(...)
          end,
          ["<esc>"] = function(...)
            return require("telescope.actions").close(...)
          end,
        },
      }
      opts.defaults.scroll_strategy = "limit"
      opts.defaults.layout_config = {
        horizontal = {
          height = 0.95,
          preview_cutoff = 120,
          prompt_position = "bottom",
          width = 0.95,
        },
      }
      opts.defaults.dynamic_preview_title = true
    end,
    config = function(_, opts)
      local tel = require("telescope")
      tel.setup(opts)
      -- tel.load_extension("yank_history")
      tel.load_extension("fzf")
      tel.load_extension("notify")
      -- tel.load_extension("macros")
    end,
  },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
}
