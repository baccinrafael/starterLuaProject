local game = {}

local push = require("src.push")

local GameData = {
	width = 500,
	height = 500,
	seed = os.time(),
}

local rng = love.math.newRandomGenerator(GameData.seed)

function CH(a, b, c)
	return { a / 255, b / 255, c / 255 }
end

local Colors = {
	inkBlack = CH(13, 19, 33),
	linen = CH(255, 237, 223),
	pearlAqua = CH(175, 224, 206),
	amaranth = CH(218, 62, 82),
	cobaltBlue = CH(0, 75, 168),
	shadowGrey = CH(36, 39, 43),
	darkSpruceGreen = CH(36, 79, 38),
	porcelain = CH(251, 254, 249),
}

function game.load()
	love.graphics.setDefaultFilter("linear", "linear") -- linear or nearest, nearest for pixel art based games, linear for everything else

	local desktopWidth, desktopHeight = love.window.getDesktopDimensions() -- Use that if your game will use the entire screen (fullscreen)

	--  push:setupScreen(GameData.width, GameData.height, desktopWidth, desktopHeight, { -- If you want full screen uncomment this line and delete the one below \/ and turn fullscreen to true
	push:setupScreen(GameData.width, GameData.height, GameData.width, GameData.height, {
		fullscreen = false,
		resizable = false,
		vsync = true,
		canvas = true, -- should always be true
	})

	love.window.setMode(GameData.width, GameData.height)

	love.graphics.setNewFont(18)
end

function game.draw()
	push:start()

	-- Exemplo: Um retângulo que ocupa exatamente a borda da resolução virtual
	love.graphics.setColor(1, 0, 0, 1) -- Cor vermelha
	love.graphics.rectangle("fill", 0, 0, GameData.width, GameData.height)

	push:finish()
end

function game.resize(w, h)
	push:resize(w, h)
end

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end

return game
