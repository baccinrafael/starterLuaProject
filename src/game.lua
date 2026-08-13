local game = {}

local push = require("src.push")

local desktopWidth, desktopHeight = love.window.getDesktopDimensions() -- Use that if your game will use the entire screen (fullscreen)
local GameData = {
	width = desktopWidth,
	height = desktopHeight,
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
	cherryBlossom = CH(237, 175, 184),
	celadon = CH(179, 222, 193),
	deepPurple = CH(89, 17, 77),
	evergreen = CH(0, 59, 54),
	orange = CH(252, 163, 17),
}

function game.load()
	love.graphics.setDefaultFilter("linear", "linear") -- linear or nearest, nearest for pixel art based games, linear for everything else

	push:setupScreen(
		GameData.width,
		GameData.height,
		desktopWidth,
		desktopHeight,
		{ -- If you dont want full screen comment this line and uncomment the one below \/ and turn fullscreen to false
			-- push:setupScreen(GameData.width, GameData.height, GameData.width, GameData.height, {
			fullscreen = true,
			resizable = false,
			vsync = true,
			canvas = true, -- should always be true
		}
	)

	love.window.setMode(GameData.width, GameData.height)

	love.graphics.setNewFont(18)
end

function game.draw()
	push:start()

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
