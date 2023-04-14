--[[ Crate a module for player is a greate idea because you can 
     make atribute for it, in this case have only the position
     but depending of the game you're making you can create a
     variable of Health of player Mana and others things.
     So take this tip ;)
--]]

local Player = {}

Player.Position = {
	-- Place the circle in the center of screen.
	X = love.graphics.getWidth() / 2,
	Y = love.graphics.getHeight() / 2
}

return Player
