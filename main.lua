local Controller = require("src.core.controller")
local MotorController = require("src.modules.motor_controller")
local SensorHandler = require("src.modules.sensor_handler")
local IntegrityCheck = require("src.security.integrity_check")
local Hardware = require("src.hal.hardware")
local Logger = require("src.utils.logger")
local Config = require("config")

math.randomseed(os.time())

Hardware:init()

local controller = Controller:new()
local motor = MotorController
local sensor = SensorHandler
local security = IntegrityCheck

controller:init()
security:run()

local distance = sensor:read_distance()

if sensor:is_obstacle(distance) then
    motor:stop()
else
    local speed = motor:pid_control(50, distance)
    motor:set_speed(speed)
end

controller:start()
