return {
    -- Copilot config
    "zbirenbaum/copilot.lua",
    opts = {
        -- These are disabled in the default configuration.
        suggestion = { enabled = true },
        panel = { enabled = true },
        filetypes = {
            tex = false,
            markdown = true,
        },
    },
}
