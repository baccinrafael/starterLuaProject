local game = {}

local gameData = require("src.gameData")
local Colors = require("src.Colors")
local keymaps = require("src.keymaps")
local push = require("src.push")

function game.load()
	gameData.setup()
end

function game.draw()
	push:start()

	love.graphics.setColor(Colors.light.linen)
	love.graphics.rectangle("fill", 0, 0, gameData.gameWidth, gameData.gameHeight)
	love.graphics.setColor(Colors.dark.inkBlack)
	for i = 0, gameData.gameHeight, gameData.gameHeight / 18 do
		love.graphics.rectangle("line", 0, i, gameData.gameHeight / 6, gameData.gameHeight / 6)
		for j = 0, gameData.gameWidth, gameData.gameWidth / 24 do
			love.graphics.rectangle("line", j, i, gameData.windowWidth / 8, gameData.gameWidth / 8)
		end
	end

	push:finish()
end

function game.resize(w, h)
	push:resize(w, h)
end

function love.keypressed(key)
	keymaps:checkkeys(key)
end

return game
