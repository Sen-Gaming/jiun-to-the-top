function love.load()
    player = {}
    player.x = 960
    player.y = 540
    player.speed = 3
end

function love.update(dt)
    -- move up
    if love.keyboard.isDown("w") then
        player.y = player.y - player.speed
    end
    -- move down
    if love.keyboard.isDown("s") then
        player.y = player.y + player.speed
    end
    -- move left
    if love.keyboard.isDown("a") then
        player.x = player.x - player.speed
    end
    -- move right
    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed
    end
end

function love.draw()
    love.graphics.circle("fill", player.x, player.y, 100)
end
