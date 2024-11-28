local system_info = {}

--[[
	@local func formatTime
	@table system_info
		@method .getInfo
		@method .print
]]

-- Zamanı saat, dakika, saniye formatına dönüştürme fonksiyonu
local function formatTime(_seconds)
    local hours = math.floor(_seconds / 3600)
    local minutes = math.floor((_seconds % 3600) / 60)
    local seconds = _seconds % 60
    return string.format("%02d:%02d:%02d", hours, minutes, seconds)
end

function system_info.getInfo()
    local power_status, power_percent, power_time = love.system.getPowerInfo()
    local processor_count = love.system.getProcessorCount()
    local system_os = love.system.getOS()
	local major, minor, revision, codename = love.getVersion()
	local love_version = string.format("%d.%d.%d - %s", major, minor, revision, codename)

    return string.format(
        "LÖVE: %s\nİşletim Sistemi: %s\nDurum: %s\nYüzde: %s\nSüre: %s\nİşlemci: %d",
        love_version or "Bilinmiyor",
		system_os or "Bilinmiyor",
        power_status or "Bilinmiyor",
        power_percent and (power_percent .. "%") or "Bilinmiyor",
        power_time and formatTime(power_time) or "Bilinmiyor",
        processor_count or 1
    )
end

function system_info.print(info_text)
    local window_width = love.window.getMode()
	local right_gap = 250
	local text_width = right_gap - 10
	local text_posx = window_width - right_gap
    love.graphics.printf(info_text, text_posx, 10, text_width, "right")
end

return system_info
