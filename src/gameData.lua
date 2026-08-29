local gameData = {}
local Colors = require("src.Colors")
local push = require("src.push")

local dw, dh = love.window.getDesktopDimensions() -- Use that if your game will use the entire screen (fullscreen)
gameData = {
	desktopWidth = dw,
	desktopHeight = dh,
	windowWidth = dw,
	windowHeight = dh,
	gameWidth = dw,
	gameHeight = dh,
	seed = os.time(),
}

function gameData:setup()
	love.graphics.setDefaultFilter("linear", "linear") -- linear or nearest, nearest for pixel art based games, linear for everything else

	push:setupScreen(gameData.gameWidth, gameData.gameHeight, gameData.desktopWidth, gameData.desktopHeight, {
		--	-- If you dont want full screen uncomment this line \/ and comment the one on toop /\ and turn fullscreen to true
		-- push:setupScreen(gameData.gameWidth, gameData.gameHeight, gameData.windowWidth, gameData.windowHeight, {
		fullscreen = true,
		resizable = false,
		vsync = true,
		canvas = true, -- should always be true
	})

	RNG = love.math.newRandomGenerator(gameData.seed)
end

function gameData:greet()
	local fontBig = love.graphics.newFont(200)
	local fontNormal = love.graphics.newFont(25)
	love.graphics.clear(Colors.light.strongBlue)
	love.graphics.setFont(fontBig)
	love.graphics.print(":)", 150, gameData.gameHeight / 4)
	love.graphics.setFont(fontNormal)
	love.graphics.print(
		"Your PC didn't ran into a problem and LÖVE2D is up and running!",
		150,
		gameData.gameHeight / 2
	)
	love.graphics.print("Press (ESC) to quit.", 150, gameData.gameHeight / 1.6)
end

return gameData
