local slope = {}

function slope.load()
    -- Load up the basic tile images
    snow = love.graphics.newImage("ski_assets/Tiles/tile_0000.png") -- 0
    edge = love.graphics.newImage("ski_assets/Tiles/tile_0002.png") -- 1
    snow_right = love.graphics.newImage("ski_assets/Tiles/tile_0002.png") -- 2
    snow_left = love.graphics.newImage("ski_assets/Tiles/tile_0004.png") -- 3
    tileWidth = 16
    love.graphics.draw(edge, 100, 400, 0, 3)
end

function slope.draw_map()
    -- Generate the 2d array representation
    -- TODO: Change these to draw the tilemaps
    --       https://love2d.org/wiki/Tutorial:Tile-based_Scrolling
    pxlWidth, pxlHeight = love.graphics.getPixelDimensions()
    for i = 0, pxlHeight do
        for k = 0, pxlWidth do
            love.graphics.draw(edge, i, j, 0, 1)
        end
        -- for j = 1, pxlWidth / 5, tileWidth do
        --     love.graphics.draw(edge, i, j, 0, 1)
        -- end
        -- for j = pxlWidth / 5, pxlWidth - (pxlWidth / 5), tileWidth do
        --     love.graphics.draw(snow, i, j, 0, 1)
        -- end
        -- for j = pxlWidth - (pxlWidth / 5), pxlWidth, tileWidth do
        --     love.graphics.draw(edge, i, j, 0, 1)
        -- end
    end
end

return slope