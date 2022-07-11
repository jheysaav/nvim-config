local options = {
	-- Colors
	syntax = "on",
	background = "dark",

	-- Indentation
	tabstop = 4,
	shiftwidth = 4,
	smartindent = true,

	filetype = "plugin",
	filetype = "indent",
	filetype = "on",

	-- Clipboard
	clipboard = "unnamedplus",

	-- UI
	relativenumber = true,
	cursorline = true,
	numberwidth = 2,
	showmode = false,
	mouse = "a",
	wrap = true,
	list = true,
	listchars = "tab:» ,nbsp:+,space:⋅,extends:→,precedes:←",

	-- Swapfile
	swapfile = false,
}

for o, v in pairs(options) do
	vim.opt[o] = v
end
