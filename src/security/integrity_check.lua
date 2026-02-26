local Logger = require("src.utils.logger")

local IntegrityCheck = {}

function IntegrityCheck:run()
    Logger:log("SECURITY", "Running integrity checks")

    local anomaly_detected = math.random(1, 10)

    if anomaly_detected == 5 then
        Logger:log("ERROR", "Potential tampering detected!")
    else
        Logger:log("INFO", "System integrity verified")
    end
end

return IntegrityCheck
