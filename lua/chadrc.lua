-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

-- -- Function to get a random item from a list
-- function GetRandomItem(list)
--     math.randomseed(os.time()) -- Seed the random number generator using the current time
--     local randomIndex = math.random(#list) -- Generate a random index within the range of the list
--     return list[randomIndex] -- Return the item at the randomly selected index
-- end
--
--
--
-- local artList = require "ascii_art"
--
-- -- Function to get a random art from the art list
-- local function getRandomArt()
--     return GetRandomItem(artList.List)
-- end

local highlights = require "highlights"

M.ui = {
  hl_override = highlights.override,
  hl_add = highlights.add,
  theme = "gruvbox",
  statusline = {
    theme = "vscode_colored",
    separator_style = "block",
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cursor", "cwd" },
    },
  nvdash = {
    load_on_startup = true,
    header = {
"▌▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌▌",
"▌▐ ██████╗  █████╗ ██╗  ██╗ █████╗ ██╗   ██╗██╗   ██╗ ▌▌",
"▌▐ ██╔══██╗██╔══██╗██║ ██╔╝██╔══██╗╚██╗ ██╔╝██║   ██║ ▌▌",
"▌▐ ██████╔╝███████║█████╔╝ ███████║ ╚████╔╝ ██║   ██║ ▌▌",
"▌▐ ██╔══██╗██╔══██║██╔═██╗ ██╔══██║  ╚██╔╝  ██║   ██║ ▌▌",
"▌▐ ██████╔╝██║  ██║██║  ██╗██║  ██║   ██║   ╚██████╔╝ ▌▌",
"▌▐ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝  ▌▌",
"▌▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌▌",
    },
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
  tabufline = {
    show_numbers = true
  }
}

return M
