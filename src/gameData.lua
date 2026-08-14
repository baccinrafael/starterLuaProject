local gameData = {}
local push = require("src.push")

local dw, dh = love.window.getDesktopDimensions() -- Use that if your game will use the entire screen (fullscreen)
gameData = {
	desktopWidth = dw,
	desktopHeight = dh,
	width = dw,
	height = dh,
	seed = os.time(),
}

function gameData:setup()
	love.graphics.setDefaultFilter("linear", "linear") -- linear or nearest, nearest for pixel art based games, linear for everything else

	push:setupScreen(
		gameData.width,
		gameData.height,
		gameData.desktopWidth,
		gameData.desktopHeight,
		{ -- If you dont want full screen comment this line and uncomment the one below \/ and turn fullscreen to false
			-- push:setupScreen(gameData.width, gameData.height, gameData.width, gameData.height, {
			fullscreen = true,
			resizable = false,
			vsync = true,
			canvas = true, -- should always be true
		}
	)

	RNG = love.math.newRandomGenerator(gameData.seed)

	love.window.setMode(gameData.width, gameData.height)
end

return gameData
