-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("mason").setup()

require("cord").setup({
  {
    editor = {
      client = ".gg/awfixer",
      tooltip = "Just a lowk developer",
      icon = nil,
    },
    display = {
      theme = "onyx",
      swap_fields = false,
      swap_icons = false,
    },
    timestamp = {
      enabled = true,
      reset_on_idle = false,
      reset_on_change = false,
    },
    idle = {
      enabled = true,
      timeout = 300000,
      show_status = true,
      ignore_focus = true,
      unidle_on_focus = true,
      smart_idle = true,
      details = "Administering Discord or Community",
      state = nil,
      tooltip = "💤",
      icon = nil,
    },
    text = {
      workspace = function(opts)
        return "In " .. opts.workspace_name
      end,
      viewing = function(opts)
        return "Viewing " .. opts.filename
      end,
      editing = function(opts)
        return "Editing " .. opts.filename
      end,
      file_browser = function(opts)
        return "Browsing files in " .. opts.tooltip
      end,
      plugin_manager = function(opts)
        return "Managing plugins in " .. opts.tooltip
      end,
      lsp = function(opts)
        return "Configuring LSP in " .. opts.tooltip
      end,
      docs = function(opts)
        return "Reading " .. opts.tooltip
      end,
      vcs = function(opts)
        return "Committing changes in " .. opts.tooltip
      end,
      notes = function(opts)
        return "Taking notes in " .. opts.tooltip
      end,
      debug = function(opts)
        return "Debugging in " .. opts.tooltip
      end,
      test = function(opts)
        return "Testing in " .. opts.tooltip
      end,
      diagnostics = function(opts)
        return "Fixing problems in " .. opts.tooltip
      end,
      games = function(opts)
        return "Playing " .. opts.tooltip
      end,
      terminal = function(opts)
        return "Running commands in " .. opts.tooltip
      end,
      dashboard = "Home",
    },
    buttons = nil,
    assets = nil,
    variables = nil,
    hooks = {
      ready = nil,
      shutdown = nil,
      pre_activity = nil,
      post_activity = nil,
      idle_enter = nil,
      idle_leave = nil,
      workspace_change = nil,
    },
    plugins = nil,
    advanced = {
      plugin = {
        autocmds = true,
        log_level = vim.log.levels.INFO,
        cursor_update = "on_hold",
        match_in_mappings = true,
      },
      server = {
        update = "fetch",
        pipe_path = nil,
        executable_path = nil,
        timeout = 300000,
      },
      discord = {
        reconnect = {
          enabled = false,
          interval = 5000,
          initial = true,
        },
      },
    },
  },
})
