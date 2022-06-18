local get_hex = require('cokeline/utils').get_hex
local mappings = require('cokeline/mappings')

require('cokeline').setup({
  show_if_buffers_are_at_least = 0,

  buffers = {
    -- filter_valid = function(buffer) return buffer.type ~= 'terminal' end,
    -- filter_visible = function(buffer) return buffer.type ~= 'terminal' end,
    new_buffers_position = 'next',
  },

  rendering = {
    max_buffer_width = 30,
  },

  default_hl = {
    fg = function(buffer)
      return
        buffer.is_focused
        and get_hex('Normal', 'fg')
         or get_hex('Comment', 'fg')
    end,
    bg = function(buffer)
        if buffer.is_focused then
            return get_hex('Normal', 'bg')
        else 
            return get_hex('StatusLineNC', 'bg')
        end
    end,
  },

})
