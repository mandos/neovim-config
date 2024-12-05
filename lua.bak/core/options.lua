local o = vim.opt
local fn = vim.fn

vim.g._priv_autoformat = true

-- Globals
vim.g.editorconfig = true

-- Options
o.backup = false -- creates a backup file
o.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
o.cmdheight = 1 -- space for displaying messages/commands
o.conceallevel = 0 -- so that `` is visible in markdown files
o.completeopt = { "menu", "menuone", "noselect", "noinsert" } -- A comma separated list of options for Insert mode completion
o.cursorline = true -- highlight the current line
o.dir = fn.stdpath("data") .. "/swp" -- swap file directory
o.expandtab = true -- convert tabs to spaces
o.exrc = true
o.fileencoding = "utf-8" -- the encoding written to a file
o.foldenable = false -- disable folding; enable with zi
-- o.foldlevel = 1
o.foldcolumn = "1"
o.foldlevelstart = 2
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.grepprg = "rg --hidden --vimgrep --smart-case --" -- use rg instead of grep
o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50" -- block in normal and beam cursor in insert mode
o.history = 500 -- Use the 'history' option to set the number of lines from command mode that are remembered.
o.hlsearch = false -- highlight all matches on previous search pattern
o.ignorecase = true -- ignore case in search patterns
o.inccommand = "split"
o.laststatus = 2 --  The value of this option influences when the last window will have a status line (2 always)
o.lazyredraw = true -- do not redraw screen while running macros
o.listchars = "eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣"
o.number = true -- set numbered lines
o.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in milliseconds)
o.ttimeoutlen = 0 -- Time in milliseconds to wait for a key code sequence to complete
o.signcolumn = "auto"
o.updatetime = 300 -- faster completion
o.undofile = false -- enable/disable undo file creation
o.undodir = fn.stdpath("data") .. "/undodir" -- set undo directory
o.relativenumber = true -- set relative numbered lines
o.scrolloff = 3 -- Minimal number of screen lines to keep above and below the cursor
o.shiftwidth = 2 -- the number of spaces inserted for each indentation
o.sidescrolloff = 5 -- The minimal number of columns to scroll horizontally
o.shortmess = o.shortmess + "c" -- prevent "pattern not found" messages
o.showmode = false -- we don't need to see things like -- INSERT -- anymore
o.showtabline = 2 -- always show tabs
o.smartcase = true -- smart case
o.smartindent = true -- make indenting smarter again
o.splitbelow = true -- force all horizontal splits to go below current window
o.splitright = true -- force all vertical splits to go to the right of current window
o.swapfile = false -- enable/disable swap file creation
o.tabstop = 2 -- how many columns a tab counts for
o.termguicolors = true -- set term gui colors (most terminals support this)
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
o.wildignorecase = true -- When set case is ignored when completing file names and directories
o.wildmode = "full"
