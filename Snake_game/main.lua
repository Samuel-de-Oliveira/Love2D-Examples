local message = require('message')

local Max_Plane  = {X = 500, Y = 500}
local Plane      = {X = 200, Y = 200}
local Move       = 50
local canMove    = false
local globalTime = 0
local moveTimer  = 0
local timeDelay  = 0.1

function love.load()
end


function love.update(dt)
  Key = love.keyboard.isDown
  timer = timer + dt

  if Key('escape') then
    love.event.quit()
  end
  if timer > timeDelay then
    local moved = false

    if Key('up') then
      Plane['Y'] = Plane['Y'] - Move
      moved = true
    end
    if Key('down') then
      Plane['Y'] = Plane['Y'] + Move
      moved = true
    end
    if Key('right') then
      Plane['X'] = Plane['X'] + Move
      moved = true
    end
    if Key('left') then
      Plane['X'] = Plane['X'] - Move
      moved = true
    end

    if moved then
      timer = 0
    end
  end

  if Plane['X'] >= Max_Plane['X'] then
    Plane['X'] = 0
  elseif Plane['X'] < 0 then
    Plane['X'] = Max_Plane['X'] - Move
  end

  if Plane['Y'] >= Max_Plane['Y'] then
    Plane['Y'] = 0
  elseif Plane['Y'] < 0 then
    Plane['Y'] = Max_Plane['Y'] - Move
  end
end


function love.draw()
  love.graphics.rectangle(
    'fill',
    Plane['X'], Plane['Y'],
    Move, Move
  )
end
