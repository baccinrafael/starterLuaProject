local game = require("src.game")

function love.load()
	if game.load then
		game.load()
	end
end

function love.update(dt)
	if game.update then
		game.update(dt)
	end
end

function love.draw()
	if game.draw then
		game.draw()
	end
end
