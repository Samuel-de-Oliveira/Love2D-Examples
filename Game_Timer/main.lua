local tools = require("tools")
local Timer = 50

function love.load()
  fontConfig = love.graphics.newFont(25)
end

function love.update(dt)
  -- Delta time working
  Timer  = Timer + dt
  Width  = love.graphics.getWidth()
  Height = love.graphics.getHeight()
end

function love.draw()
  -- Set font size
  love.graphics.setFont(fontConfig)

  -- Show timer
  love.graphics.print(
    timeFormat(Timer), Width / 2 - 50 , Height / 2 - 20
  )
end
