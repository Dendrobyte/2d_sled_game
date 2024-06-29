local char = require("char")

-- Load default values
function love.load()
    -- Set up some default behaviors
    love.graphics.setDefaultFilter("nearest", "nearest", 0) -- Linear can die :)
    love.keyboard.setKeyRepeat(true)

    -- Load "objects"
    char.load() 
end

function love.update(dt)
    char.update_sprite(dt)
end

-- Draw a coloured rectangle.
function love.draw()
    -- In versions prior to 11.0, color component values are (0, 102, 102)
    love.graphics.print("Hello World! Debug text?", 800, 50)
    love.graphics.draw(char.sprite, char.x, char.y, 0, 3)
end

function love.keypressed(key, isrepeat)
    if key == "right" or key == "d" then
        char.x = char.x + 10
    end
    if key == "left" or key == "a" then
        char.x = char.x - 10
    end
    if key == "down" or key == "s" then
        char.y = char.y + 5 -- TODO: Lerp this...? I think that's the animation keyword.
    end
end