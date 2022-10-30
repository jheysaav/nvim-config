local options = {
	-- Colors
	syntax = "on",
	background = "dark",
	termguicolors = true,

	-- Indentation
	tabstop = 4,
	shiftwidth = 4,
	softtabstop = 4,
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

	-- Others
	swapfile = false,
	completeopt = "menu",
	completeopt = "menuone",
	completeopt = "noselect",
}

for o, v in pairs(options) do
	vim.opt[o] = v
end
