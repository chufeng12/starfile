
PlayerCetakan = require("Player")

function love.load()
    love.window.setTitle("JamWib by nur")
    love.window.setMode(320,480)

    Players = {}
    for i = 1, 5, 1 do
        Players[i] = Player.create(32 * i, 100, 2,
    "assets/sprites/ship-c1.png" )
    end
end

function love.update(dt)

end

function love.draw()
for i, value in ipairs(Players) do
    Player.draw(Players[i])
end
end