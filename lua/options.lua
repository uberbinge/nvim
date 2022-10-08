local o = vim.opt
local wo = vim.wo
local bo = vim.bo

-- global options
o.hidden = true -- allow hidden buffers
o.signcolumn = "yes" -- Show signs in number column (e.g. errors and warnings)
o.list = false -- Show tabs, spaces and line ends
o.splitbelow = true -- new window below on horizontal split
o.splitright = true -- new window to the right on vertical split
o.completeopt = "menuone,noinsert,noselect" -- set the completion methods
o.foldmethod = "expr" -- set on what to fold
o.foldenable = false -- do not fold on buffer opening
o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal" -- setting session options
o.updatetime = 300 -- faster completion
o.timeoutlen = 400 -- time to wait for a mapped sequence to complete (in milliseconds)
o.ttimeoutlen = 0 -- Time in milliseconds to wait for a key code sequence to complete
o.history = 500 -- Use the 'history' option to set the number of lines from command mode that are remembered.
o.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
o.fileencoding = "utf-8" -- the encoding written to a file
o.wildignorecase = true -- When set case is ignored when completing file names and directories
o.wildignore = [[
.git,.hg,.svn
*.aux,*.out,*.toc
*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
*.mp3,*.oga,*.ogg,*.wav,*.flac
*.eot,*.otf,*.ttf,*.woff
*.doc,*.pdf,*.cbr,*.cbz
*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
*.swp,.lock,.DS_Store,._*
*/tmp/*,*.so,*.swp,*.zip,**/node_modules/**,**/target/**,**.terraform/**"
]]
-- api options
vim.api.nvim_exec("language en_US", true) -- set english language

-- window options
wo.number = true -- Add line numbers

-- buffer options
bo.expandtab = true -- Expand tabs to spaces per default
bo.shiftwidth = 2 -- Set default auto-indent width
bo.softtabstop = 2 -- Set default virtual tabstop width
bo.tabstop = 2 -- Set default tabstop width
