local Config = require("config")
local Logger = require("src.utils.logger")

local SensorHandler = {}

function SensorHandler:read_distance()
    local distance = math.random(10, 100)
    Logger:log("INFO", "Distance detected: " .. distance)
    return distance
end

function SensorHandler:is_obstacle(distance)
    if distance < Config.SAFE_DISTANCE then
        Logger:log("WARN", "Obstacle detected")
        return true
    end
    return false
end

return SensorHandler
