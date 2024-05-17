local bufferline = require("bufferline")
bufferline.setup {
    options = {
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'icon'
        },
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        }
    }
}
