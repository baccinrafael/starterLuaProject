local game = {}

local gameData = require("src.gameData")
local Colors = require("src.Colors")
local keymaps = require("src.keymaps") -- This is good for debugging and other functions keys like exiting or fullscreen
local push = require("src.push")

function game.load()
	gameData.setup()
end

function game.draw()
	push:start()
	-- Draw things here
	gameData:greet()
	push:finish()
end

function game.update(dt) end

function game.resize(w, h)
	push:resize(w, h)
end

function love.keypressed(key)
	keymaps:checkkeys(key)
end

return game
