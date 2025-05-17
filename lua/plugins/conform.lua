return {  

  { -- autoformat
    'stevearc/conform.nvim',
    lazy = false,
    keys = {
      {
        '<leader>w',
        function()
          require('conform').format { async = true }
        end,
        mode = '',
        desc = 'format buffer',
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { c = true, cpp = true, html = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        -- conform can also run multiple formatters sequentially
        python = { 'isort', 'black' },
        sql = { 'sql_formatter', stop_after_first = true },
        -- you can use a sub-list to tell conform to run *until* a formatter
        -- is found.
        javascript = { 'prettierd', 'prettier', stop_after_first = true },
        typescript = { 'prettierd', 'prettier', stop_after_first = true },
        typescriptreact = { 'prettierd', 'prettier', stop_after_first = true },
        javascriptreact = { 'prettierd', 'prettier', stop_after_first = true },
        markdown = { 'prettierd', 'prettier', stop_after_first = true },
        css = { 'prettierd', 'prettier', stop_after_first = true },
        haskell = { 'ormolu' },
        html = { 'prettierd', 'prettier', stop_after_first = true },
        cpp = { 'clang-format' },
        c = { 'clang-format' },
        go = { 'gofumpt' },
      },
    },
  }

}
