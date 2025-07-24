width, height = love.graphics.getWidth(), love.graphics.getHeight()

function love.load()
    x = 30
    y = 50
end

function love.draw()
    love.graphics.rectangle("line", x, y, 15, 20)
end

function love.keypressed(key)
    if key == "space" then
        x = math.random(80, width - 80)
        y = math.random(80, height - 80)
    end
end

--[=[

function love.load()
end

function love.update(dt)
end

function love.draw()
end

function love.load()
    listOfRectangles = {}
end

function createFigure()
    local randomNumber = math.random(1, 20)
    local rectangle = {}
    rectangle.x = width / 2
    rectangle.y = height / 2
    rectangle.width = 5 * randomNumber
    rectangle.height = 10 * randomNumber
    table.insert(listOfRectangles, rectangle)
end

function love.keypressed(key)
    if key == "space" then
        listOfRectangles = {} 
        createFigure() 
    end
end

function love.update(dt)

end

function love.draw(dt)
    for _,v in ipairs(listOfRectangles) do
        love.graphics.rectangle("fill", v.x - (v.width / 2), v.y - (v.height / 2), v.width, v.height)
    end
end

function love.load()
    tick = require "tick"
    drawRectangle = false

    --The first argument is a function
    --The second argument is the time it takes to call the function
    tick.delay(function () drawRectangle = true end ,   2)
end

function love.update(dt)
    tick.update(dt)
end

function love.draw()
    if drawRectangle then
        love.graphics.rectangle("fill", 100, 100, 300, 200)
    end
end

]=]