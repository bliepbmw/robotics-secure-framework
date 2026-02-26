-- Hardware Abstraction Layer

local Hardware = {}

function Hardware:init()
    print("[HAL] Initializing hardware interfaces...")
end

function Hardware:shutdown()
    print("[HAL] Shutting down hardware safely...")
end

return Hardware
