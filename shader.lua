local M = {}

function M.read(shader_file)
    if not love.filesystem.getInfo(shader_file) then
        return nil, "File not found: " .. shader_file
    end

    local content, size = love.filesystem.read(shader_file)
    if not content then
        return nil, "Error reading file: " .. shader_file
    end

    return content
end

function M.toShader(shader_file)
	local shader_code = M.read(shader_file)
	M.isReady(shader_code)
	return love.graphics.newShader(shader_code)
end

function M.isReady(shader_code)
	if not shader_code then
        error(err)
    end
end

return M
