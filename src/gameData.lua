local gameData = {}
local push = require("src.push")

local dw, dh = love.window.getDesktopDimensions() -- Use that if your game will use the entire screen (fullscreen)
gameData = {
	desktopWidth = dw,
	desktopHeight = dh,
	windowWidth = 800,
	windowHeight = 600,
	gameWidth = 800,
	gameHeight = 600,
	seed = os.time(),
}

function gameData:setup()
	love.graphics.setDefaultFilter("linear", "linear") -- linear or nearest, nearest for pixel art based games, linear for everything else

	--	push:setupScreen( 		gameData.width, gameData.height, gameData.desktopWidth, gameData.desktopHeight, {
	--	-- If you want full screen comment this line \/ and uncomment the one on toop /\ and turn fullscreen to true
	push:setupScreen(gameData.gameWidth, gameData.gameHeight, gameData.windowWidth, gameData.windowHeight, {
		fullscreen = false,
		resizable = false,
		vsync = true,
		canvas = true, -- should always be true
	})

	RNG = love.math.newRandomGenerator(gameData.seed)

	love.window.setMode(gameData.windowWidth, gameData.windowHeight, { borderless = true })
end

return gameData
