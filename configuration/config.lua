Config = {}

-- 'infinite'  players never run out of stamina: sprinting and swimming as long as they like.
-- 'scaled'    stamina drains and comes back at the rates below.
Config.Mode = 'scaled'

-- How fast stamina drains while sprinting or swimming, with Config.Mode = 'scaled'.
-- 1.0 is GTA's own rate. 0.5 drains half as fast, so stamina lasts twice as long. 2.0 drains twice as fast.
Config.DrainMultiplier = 0.5

-- How fast stamina comes back while resting, with Config.Mode = 'scaled'. 1.0 is GTA's own rate.
Config.RecoverMultiplier = 1.0

-- Update checks are controlled in server.cfg for every Pigeon Studios resource at once:
--     set pigeon_update_check "on"      (default)  |  "quiet"  |  "off"
