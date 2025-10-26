local tools = require("tools")

-- Set some vars
local Timer  = 0
local Text   = ''
local active = true

function love.load()
  -- Configure font
  fontConfig = love.graphics.newFont(25)
end


function love.update(dt)
  -- Start/Stop timer
  local spacebar_key = love.keyboard.isDown('space')
  if spacebar_key then
    active = not active
    love.timer.sleep(0.25)
  end

  -- Delta time working
  if active then
    Timer = Timer + dt
  end

  -- Funny thing
  if Timer >= 60 then
    Text = 'Realy, are you here for more than 1 minute?'
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

  -- Show instruction message
  love.graphics.print(
    'Press \'spacebar\' to start/stop the timer', 100, 150
  )
end
