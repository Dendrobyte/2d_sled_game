local char = require("char")
local slope = require("slope")

-- Load default values
function love.load()
    -- Set up some default behaviors
    love.graphics.setDefaultFilter("nearest", "nearest", 0) -- Linear can die :)
    love.keyboard.setKeyRepeat(true)

    -- Set up the background and start it
    slope.load()

    -- Load "objects"
    char.load() 
end

function love.update(dt)
    char.update_sprite(dt)
end

-- Draw things in the scene. Draw order is dependent on line order, so keep that in mind.
function love.draw()
    slope.draw_map()
    -- Draw character on top of e
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

-- Design notes

-- If the skiier goes to the bottom of the screen, game over.
-- Words will slide up the slope. Upon successful typing of the words (have a text box), the skiier will bump "up" on the screen.
-- This should- visually- look more like the whole "camera" is moving up to show more words.
-- The further away words are a little longer but should slide up a little more and might have coins on the way or something
-- For starters, just have the same tileset constantly generated alongside random words from a text file. Eventually... procedurally generate a path?