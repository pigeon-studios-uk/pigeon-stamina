--[[
    Pigeon Stamina: client.

    Changes how long players can sprint and swim. With Config.Mode = 'infinite', stamina is kept full.
    With 'scaled', the resource reads the player's stamina ten times a second and scales whatever GTA
    took away or gave back since the last reading by Config.DrainMultiplier or Config.RecoverMultiplier.

    It only touches the player's own stamina, in their own game.
]]

local TICK_MS = 100
local REFILL_SHARE = 1 / 3   -- a jump bigger than this share of the bar (a respawn) is left as it is

local function clamp(value, low, high)
    return math.max(low, math.min(high, value))
end

--[[
    The stamina to set, from the last reading and the current one, for 'scaled'. Returns nil when
    nothing needs changing.
]]
local function scaled(last, current, max)
    if not last or current == last then return nil end
    local drain = math.max(0, tonumber(Config.DrainMultiplier) or 1.0)
    local recover = math.max(0, tonumber(Config.RecoverMultiplier) or 1.0)
    if current < last then
        return clamp(last - (last - current) * drain, 0, max)
    end
    if current - last > max * REFILL_SHARE then return nil end
    return clamp(last + (current - last) * recover, 0, max)
end

CreateThread(function()
    local last
    while true do
        local player = PlayerId()
        local max = GetPlayerMaxStamina(player) or 100.0
        local current = GetPlayerStamina(player) or max

        if Config.Mode == 'infinite' then
            if current < max then SetPlayerStamina(player, max + 0.0) end
            last = max
        else
            local value = scaled(last, current, max)
            if value and math.abs(value - current) > 0.001 then
                SetPlayerStamina(player, value + 0.0)
                last = value
            else
                last = current
            end
        end
        Wait(TICK_MS)
    end
end)
