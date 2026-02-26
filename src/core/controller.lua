-- Controller Module

local Controller = {}

function Controller:new()
    local obj = {}
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function Controller:init()
    print("[+] Initializing system...")
end

function Controller:start()
    print("[+] Control loop started.")
end

return Controller
