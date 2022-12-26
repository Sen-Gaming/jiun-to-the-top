function love.load()
    player = {}
    player.x = 960
    player.y = 540
    player.speed = 3
    player.sprite = love.graphics.newImage('assets/sprites/jiunsprite.png')

    red = 62/255
    green = 208/255
    blue = 110/255
    alpha = 50/100
    backgroundColor = { red, green, blue, alpha}
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
    love.graphics.draw(player.sprite, player.x, player.y)
    love.graphics.setBackgroundColor(backgroundColor)
end
