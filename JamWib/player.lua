Player = {}

function Player.create(x,y, speed,gambar)
    local self = {}

    self.x = x
    self.y = y
    self.kecepatan = speed
    self.gambar = love.graphics.newImage(gambar)

    return self
end

function Player.input(self)
    local arah = {}
    arah.x = 0
    arah.y = 0

    if love.keyboard.isDown("d") then
        arah.x = arah.x + 1
    end
    if love.keyboard.isDown("a")then
        arah.x = arah.x - 1
    end

    if love.keyboard.isDown("w") then
        arah.y = arah.y + 1
    end

    if love.keyboard.isDown("s") then
        arah.y = arah.y - 1
    end

    self.arah = arah
end

function Player.update(dt, self)
    if self.x + self.arah.x < 320 - 48 then
        if self.x + self.arah.x > 0 then
    self.x = self.x + self.arah.x * self.kecepatan 
        end
end
    self.y = self.y - self.arah.y * self.kecepatan
end

function Player.draw(self)
    love.graphics.draw(self.gambar,self.x,self.y)
end