return {
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        version = false, -- telescope did only one release, so use HEAD for now
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
                    preview_cutoff = 100,
                    prompt_position = "bottom",
                    width = 0.95,
                },
            }
            opts.defaults.dynamic_preview_title = true
        end,
    },
}

