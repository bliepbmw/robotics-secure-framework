-- Sensor Handler

local SensorHandler = {}

function SensorHandler:read_distance()
    -- Simulated sensor value
    local distance = math.random(10, 100)
    print("[Sensor] Distance:", distance)
    return distance
end

return SensorHandler
