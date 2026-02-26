-- Motor Controller

local MotorController = {}

function MotorController:set_speed(left, right)
    print("[Motor] Left speed:", left)
    print("[Motor] Right speed:", right)
end

function MotorController:stop()
    print("[Motor] Emergency stop activated.")
end

return MotorController
