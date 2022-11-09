function love.load()
	-- Fullscreen presets
	full = true
	love.window.setFullscreen(full)

	-- Place the circle in the center
	x = love.graphics.getWidth() / 2
	y = love.graphics.getHeight() / 2

	-- Help message text
	helpText = 'W A S D: Moves\nEscape: Exit'	
end

function love.keypressed(Key, scanCode, isRepeat)
	-- Full screen control
	if Key == 'f11' then
		full = not full
		love.window.setFullscreen(full)
		love.timer.sleep(0.2)
	end

	-- Quit game
	if Key == 'escape' then
		love.event.quit()
	end
end

function love.update(dt)
	-- Create a object for make easy the code
	local Key = love.keyboard.isDown
	
	-- Circle movement
	if Key('d') or Key('right') then
		helpText = ''
		x = x + 270 * dt
	end
	if Key('a') or Key('left') then
		helpText = ''
		x = x - 270 * dt
	end
	if Key('w') or Key('up') then
		helpText = ''
		y = y - 270 * dt
	end
	if Key('s') or Key('down') then
		helpText = ''
		y = y + 270 * dt
	end

	-- Border barrer (To the circle doesn't exit the window)
	if x < 0 then
		x = 0
	end
	if x > love.graphics.getWidth() then
		x = love.graphics.getWidth()
	end
	if y < 0 then
		y = 0
	end
	if y > love.graphics.getHeight() then
		y = love.graphics.getHeight()
	end
end

function love.draw()
	-- Draw the circle
	love.graphics.circle('fill', x, y, 60, 50)
	-- Add text on the circle
	love.graphics.print(helpText, x - 50, y - 100) 
end
