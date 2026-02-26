-- Logger Module

local Logger = {}

local levels = {
    INFO = "[INFO]",
    WARN = "[WARN]",
    ERROR = "[ERROR]",
    SECURITY = "[SECURITY]"
}

function Logger:log(level, message)
    local time = os.date("%Y-%m-%d %H:%M:%S")
    print(string.format("%s %s %s", time, levels[level], message))
end

return Logger
