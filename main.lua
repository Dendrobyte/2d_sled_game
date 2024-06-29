function love.load()
    frame = 0
end

function love.draw()
    sec = math.floor(frame/60)
    love.graphics.print("Current Sec: " .. sec .. "| Current Frame: " .. frame)
end

function love.update()
    frame = frame + 1
end