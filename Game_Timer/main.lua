local tools = require("tools")
local Timer = 50

function love.load()
end

function love.update(dt)
  -- Delta time working
  Timer = Timer + dt
end

function love.draw()
  love.graphics.print(timeFormat(Timer), 100, 100)
end
