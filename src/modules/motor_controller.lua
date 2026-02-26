local Config = require("config")
local Logger = require("src.utils.logger")

local MotorController = {}

local integral = 0
local previous_error = 0

function MotorController:pid_control(target, current)
    local error = target - current
    integral = integral + error
    local derivative = error - previous_error

    local output = (Config.PID_KP * error) +
                   (Config.PID_KI * integral) +
                   (Config.PID_KD * derivative)

    previous_error = error

    return math.min(Config.MOTOR_MAX_SPEED, math.max(0, output))
end

function MotorController:set_speed(speed)
    Logger:log("INFO", "Motor speed set to " .. math.floor(speed))
end

function MotorController:stop()
    Logger:log("WARN", "Emergency stop triggered")
end

return MotorController
