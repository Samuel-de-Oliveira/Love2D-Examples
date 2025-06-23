local tools = require("tools")

-- Set some vars
local Timer = 0
local Text  = ''

function love.load()
  -- Configure font
  fontConfig = love.graphics.newFont(25)
end


function love.update(dt)
  -- Delta time working
  Timer = Timer + dt

  -- Funny thing
  if Timer >= 60 then
    Text = 'Realy, you are here for 1 minute?'
  end

  -- Get the Width and Height in real time
  Width  = love.graphics.getWidth()
  Height = love.graphics.getHeight()
end


function love.draw()
  -- Set font size
  love.graphics.setFont(fontConfig)

  -- Show timer
  love.graphics.print(
    timeFormat(Timer), 100, Height - 100
  )

  -- Show funny message
  love.graphics.print(
    Text, 100, 100
  )
end
