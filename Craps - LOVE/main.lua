function love.load()

end

function love.update(dt)
    
end

function love.draw()
    
    love.graphics.setColor(0, 1, 0)
    love.graphics.rectangle("fill", 0, 0, 800, 600)
    love.graphics.setColor(0, 0, 0)
    love.graphics.print("Let's play craps! Press Space to roll!", 300, 300)
    
end

--determinePoint()

function rollDice()
    die1 = math.random(6)
    die2 = math.random(6)
    return die1 + die2
end

function pointGame(point)
    while true do
        roll = rollDice()
        love.graphics.print(roll, 400, 300)
        if roll == point then
            love.graphics.print("You win!", 400, 300)
        elseif roll == 7 then
            love.graphics.print("You lost!", 400, 300)
        end
    end
end

function determinePoint()
    roll = rollDice()
    love.graphics.print(roll, 400, 300)
    if roll == 2 or roll == 3 or roll == 12 then
        love.graphics.print("You lost!", 400, 300)
    elseif roll == 7 or roll == 11 then
        love.graphics.print("You win!", 400, 300)
    else
        point = roll
        love.graphics.print(point .. " is the point, mark it!", 400, 300)
        pointGame(point)
    end
end

