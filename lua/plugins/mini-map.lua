local MiniMap = require('mini.map')

-- local diagnostic_integration = MiniMap.gen_integration.diagnostic({
--   error = 'DiagnosticFloatingError',
--   warn  = 'DiagnosticFloatingWarn',
--   info  = 'DiagnosticFloatingInfo',
--   hint  = 'DiagnosticFloatingHint',
-- })

-- local gitsigns_integration = MiniMap.gen_integration.gitsigns({
--   add = 'GitSignsAdd',
--   change  = 'GitSignsChange',
--   delete  = 'GitSignsDelete',
-- })

MiniMap.setup({
  -- Highlight integrations (none by default)
  -- integrations = nil,
  integrations = {
    MiniMap.gen_integration.builtin_search(),
    MiniMap.gen_integration.gitsigns(),
    MiniMap.gen_integration.diagnostic(),
  },

  -- Symbols used to display data
  symbols = {
    -- Encode symbols. See `:h MiniMap.config` for specification and
    -- `:h MiniMap.gen_encode_symbols` for pre-built ones.
    -- Default: solid blocks with 3x2 resolution.
    encode = nil,

    -- Scrollbar parts for view and line. Use empty string to disable any.
    scroll_line = '█',
    scroll_view = '┃',
  },

  -- Window options
  window = {
    -- Whether window is focusable in normal way (with `wincmd` or mouse)
    focusable = true,

    -- Side to stick ('left' or 'right')
    side = 'right',

    -- Whether to show count of multiple integration highlights
    show_integration_count = true,

    -- Total width
    width = 10,

    -- Value of 'winblend' option
    winblend = 25,
  },
})

-- 快捷键
vim.keymap.set('n', '<Leader>mc', MiniMap.close)
vim.keymap.set('n', '<Leader>mf', MiniMap.toggle_focus)
vim.keymap.set('n', '<Leader>mo', MiniMap.open)
vim.keymap.set('n', '<Leader>mr', MiniMap.refresh)
vim.keymap.set('n', '<Leader>ms', MiniMap.toggle_side)
vim.keymap.set('n', '<Leader>mt', MiniMap.toggle)