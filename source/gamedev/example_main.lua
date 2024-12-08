---------------------
--[ Import Modules]--
---------------------

--require("global")
--require("utils")

----------------------
--[ Load Functions ]--
----------------------

gameStates = {
    menu = 1
    -- devamı
}
local StateManager = require("state_manager")
StateManager.registerStateModule(gameStates.menu, "menu")
-- sonraki modüller buraya

StateManager.setState(gameStates.menu)

----------------------
--[ MAIN FUNCTIONS ]--
----------------------

function love.load() end
function love.update(dt) StateManager.update(dt) end
function love.draw() StateManager.draw() end
