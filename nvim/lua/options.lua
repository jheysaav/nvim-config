local options = {
	-- Colours
	background = "light",
	termguicolors = true,

	-- Indentation
	tabstop = 4,
	shiftwidth = 4,
	softtabstop = 4,
	expandtab = true,
	autoindent = true,
	smartindent = true,

	-- Clipboard
	clipboard = "unnamedplus",

	-- UI
	mouse = "a",
	wrap = true,
	numberwidth = 2,
	showmode = false,
	cursorline = true,
	relativenumber = true,
	list = true,
	listchars = "tab:» ,space:⋅",
	completeopt = { "menu", "menuone", "noinsert", "noselect" },

	-- Others
	swapfile = false,
	updatetime = 250,
}

for o, v in pairs(options) do
	vim.opt[o] = v
end
