Colors = {}

function CH(a, b, c)
	return { a / 255, b / 255, c / 255 }
end

local Colors = {
	light = {
		porcelain = CH(251, 254, 249),
		linen = CH(255, 237, 223),
		pearlAqua = CH(175, 224, 206),
		celadon = CH(179, 222, 193),
		cherryBlossom = CH(237, 175, 184),
		canaryYellow = CH(252, 252, 98),
		periwinkle = CH(142, 148, 242),
		mint = CH(86, 227, 159),
		strongBlue = CH(30, 46, 222),
		greenScreen = CH(83, 255, 69),
		lightGrey = CH(224, 224, 230),
	},

	medium = {
		orange = CH(252, 163, 17),
		amaranth = CH(218, 62, 82),
		inferno = CH(255, 30, 26),
	},
	dark = {
		darkSpruceGreen = CH(36, 79, 38),
		cobaltBlue = CH(0, 75, 168),
		evergreen = CH(0, 59, 54),
		shadowGrey = CH(36, 39, 43),
		deepPurple = CH(89, 17, 77),
		inkBlack = CH(13, 19, 33),
		blood = CH(143, 1, 1),
	},
}

return Colors
