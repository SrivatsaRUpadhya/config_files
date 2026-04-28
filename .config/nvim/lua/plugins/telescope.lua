 return {
    "nvim-telescope/telescope.nvim", tag="0.1.3",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>pf",
        function() require("telescope.builtin").find_files({}) end,
        desc = "Find File",
      },
      {
        "<C-p>",
        function() require("telescope.builtin").git_files({}) end,
        desc = "Find Git File",
      },
      {
        "<leader>pw",
        function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ")}) end,
        desc = "Grep search",
      },
      {
        "<leader>ps",
        function() require("telescope.builtin").live_grep({}) end,
        desc = "Live grep search",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  }
