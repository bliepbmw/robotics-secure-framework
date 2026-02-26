local Controller = require("src.core.controller")
local MotorController = require("src.modules.motor_controller")
local SensorHandler = require("src.modules.sensor_handler")
local IntegrityCheck = require("src.security.integrity_check")

math.randomseed(os.time())

local controller = Controller:new()
local motor = MotorController
local sensor = SensorHandler
local security = IntegrityCheck

controller:init()
security:run()

local distance = sensor:read_distance()

if distance < 20 then
    motor:stop()
else
    motor:set_speed(50, 50)
end

controller:start()
