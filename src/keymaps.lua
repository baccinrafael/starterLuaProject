local keymaps = {}

function keymaps:checkkeys(key)
	if key == "escape" then
		love.event.quit()
	end
	if key == "f" then
		if love.window.getFullscreen() == false then
			love.window.setFullscreen(true)
		else
			love.window.setFullscreen(false)
		end
	end
end

return keymaps
