-- state_manager.lua

local StateManager = {}

-- Yerel değişkenler
local stateFunctions = {}
local currentState

-- Fonksiyon: Bir durumu kaydet
function StateManager.registerStateModule(state, module)
    stateFunctions[state] = require(module)
end

-- Fonksiyon: Geçerli durumu ayarla
function StateManager.setState(state)
    currentState = state
    if stateFunctions[currentState] and stateFunctions[currentState].load then
        stateFunctions[currentState].load()
    end
end

-- LOVE döngü işlevleri
function StateManager.update(dt)
    if stateFunctions[currentState] and stateFunctions[currentState].update then
        stateFunctions[currentState].update(dt)
    end
end

function StateManager.draw()
    if stateFunctions[currentState] and stateFunctions[currentState].draw then
        stateFunctions[currentState].draw()
    end
end

-- Fonksiyon: Geçerli durumu al
function StateManager.getCurrentState()
    return currentState
end

-- StateManager modülünü döndür
return StateManager
