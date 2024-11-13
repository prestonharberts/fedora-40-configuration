-- look
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.numberwidth = 1
vim.opt.statuscolumn = "%=%{v:relnum?v:relnum:(v:lnum==1?' '..v:lnum:v:lnum)} "
vim.opt.statusline = "%-4l%=%f %2p%%%=%4c"
vim.opt.cmdheight = 0

vim.opt.fillchars='eob: '

-- cursor
vim.opt.cursorline = true
vim.opt.guicursor = "i:block-blinkon400-blinkoff400"
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"

-- search
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- tabs and whitepsace
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.showmode = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.bo.softtabstop = 2

-- disable unnecessary button in context menu
--vim.cmd.aunmenu{'PopUp.How-to\\ disable\\ mouse'}
--vim.cmd.aunmenu{'PopUp.-1-' }

-- disable context menu
-- vim.api.nvim_set_keymap('n', '<RightMouse>', '<Nop>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<RightMouse>', '<Nop>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<RightMouse>', '<Nop>', { noremap = true, silent = true })

-- middle click to paste anywhere on the screen only where the nvim cursor is at
vim.api.nvim_set_keymap('n', '<MiddleMouse>', '"*P', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<MiddleMouse>', '"*P', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<MiddleMouse>', '<C-o>"*P', { noremap = true, silent = true })

-- PlugInstall to install all listed here
-- PlugClean to delete ones commented out

vim.cmd([[
  call plug#begin('~/.local/share/nvim/plugged')

  " List your plugins here
  " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'Mofiqul/adwaita.nvim'

  call plug#end()
]])

-- Set to light theme
vim.o.background = "light"
vim.cmd("colorscheme adwaita")
vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")
vim.cmd("highlight StatusLine ctermbg=NONE guifg=#000000 guibg=NONE")
vim.cmd("highlight EndOfBuffer ctermfg=NONE ctermbg=NONE")
vim.cmd("highlight Visual guibg=#CCCCCC guifg=NONE")
vim.cmd("highlight CursorLine guibg=#ECECEC guifg=NONE")

-- Set window title to current filename when opening or switching buffers
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    callback = function()
        local filename = vim.fn.expand("%:t")  -- Gets the filename
        if filename == "" then
            filename = "[No Name]"  -- Handle empty buffer case
        end
        vim.cmd("let &titlestring = '" .. filename .. "'")
        vim.opt.title = true  -- Enable the terminal title
    end,
})

