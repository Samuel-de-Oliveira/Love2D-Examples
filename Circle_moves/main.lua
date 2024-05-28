-- Include player atributes in Player.lua file
local Player = require("Player")

function love.load()
	-- Fullscreen presets
	full = true
	love.window.setFullscreen(full)

	-- Help message text
	helpText = 'W A S D: Moves\nEscape: Exit, R: Restart'	
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

   -- Restart game
   if Key == 'r' then
      love.event.restart()
   end
end

function love.update(dt)
	-- Create a object for make easy the code
	local Key = love.keyboard.isDown
	
	-- Circle movement
	if Key('d') or Key('right') then
		helpText = ''
		Player.Position.X = Player.Position.X + 270 * dt
	end
	if Key('a') or Key('left') then
		helpText = ''
		Player.Position.X = Player.Position.X - 270 * dt
	end
	if Key('w') or Key('up') then
		helpText = ''
		Player.Position.Y = Player.Position.Y - 270 * dt
	end
	if Key('s') or Key('down') then
		helpText = ''
		Player.Position.Y = Player.Position.Y + 270 * dt
	end

	-- Border barrer (To the circle doesn't exit the window)
	if Player.Position.X < 0 then
		Player.Position.X = 0
	end
	if Player.Position.X > love.graphics.getWidth() then
		Player.Position.X = love.graphics.getWidth()
	end
	if Player.Position.Y < 0 then
		Player.Position.Y = 0
	end
	if Player.Position.Y > love.graphics.getHeight() then
		Player.Position.Y = love.graphics.getHeight()
	end
end

function love.draw()
	-- Draw the circle
	love.graphics.circle('fill', Player.Position.X, Player.Position.Y, 60, 50)
	-- Add text on the circle
	love.graphics.print(helpText, Player.Position.X - 50, Player.Position.Y - 100) 
end
