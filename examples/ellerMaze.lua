ROT=require 'rotLove/rotLove'
function love.load()
	f =ROT.Display(211, 75)
	em=ROT.Map.EllerMaze:new(f:getWidth(), f:getHeight())
	em:create(calbak)
end
function love.draw() f:draw() end
ellerStr=''
function calbak(x,y,val)
	f:write(' ', x, y, nil, val==0 and {r=125, g=125, b=125, a=255} or nil)
end
local update=false
function love.update()
    if update then
        update=false
        em:create(calbak)
    end
end
function love.keypressed(key) update=true end
