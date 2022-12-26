function love.load()
    player = {}
    player.x = 960
    player.y = 540
end

function love.update(dt)
end

function love.draw()
    love.graphics.circle("fill", player.x, player.y, 100)
end
