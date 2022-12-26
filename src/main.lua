require("utils.vec2")

function love.load()
    player = {}
    player.pos = Vec2(960, 540) -- Position
    player.speed = 3
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
    love.graphics.circle("fill", player.pos.x, player.pos.y, 100)
end
