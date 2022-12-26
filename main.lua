require("lib.vec2")

function love.load()
    player = {}
    player.pos = Vec2(960, 540) -- Position
    player.speed = 3
    player.sprite = love.graphics.newImage('assets/sprites/jiunsprite.png')

    red = 62/255
    green = 208/255
    blue = 110/255
    alpha = 50/100
    backgroundColor = { red, green, blue, alpha}
end

function love.update(dt)
    local vel = Vec2(0, 0)

    -- move up
    if love.keyboard.isDown("w") then
        vel.y = vel.y - 1
    end
    -- move down
    if love.keyboard.isDown("s") then
        vel.y = vel.y + 1
    end
    -- move left
    if love.keyboard.isDown("a") then
        vel.x = vel.x - 1
    end
    -- move right
    if love.keyboard.isDown("d") then
        vel.x = vel.x + 1
    end

    vel = vel:normed() * player.speed
    player.pos = player.pos + vel
end

function love.draw()
    love.graphics.draw(player.sprite, player.pos.x, player.pos.y)
    love.graphics.setBackgroundColor(backgroundColor)
end
