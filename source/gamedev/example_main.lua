---------------------
--[ Import Modules]--
---------------------

--require("struct")
--require("progressbar")
--require("redef")
--require("utils")

----------------------
--[ Load Functions ]--
----------------------

gameStates = {
    menu = 1,
    ingame = 2,
    options = 3
}
local StateManager = require("state_manager")
StateManager.registerStateModule(gameStates.menu, "menu") -- require(menu)
StateManager.registerStateModule(gameStates.ingame, "ingame")
StateManager.registerStateModule(gameStates.options, "options")
StateManager.setState(gameStates.menu)

----------------------
--[ MAIN FUNCTIONS ]--
----------------------

function love.load() end
function love.update(dt) StateManager.update(dt) end
function love.draw() StateManager.draw() end
