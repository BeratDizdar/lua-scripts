-- menu.lua

local StateManager = require("state_manager")
local menu = {}

-- Load fonksiyonu
function menu.load()
    -- Menü ayarları buraya yapılabilir
end

-- Update fonksiyonu
function menu.update(dt)
    if keydown("a") then 
        StateManager.setState(gameStates.ingame)  -- Oyun başlasın
    elseif keydown("o") then 
        StateManager.setState(gameStates.options)  -- Seçenekler menüsüne git
    end
end

-- Draw fonksiyonu
function menu.draw()
    gfx.print("Press A to Start Game", 100, 100)
    gfx.print("Press O for Options", 100, 130)
end

return menu
