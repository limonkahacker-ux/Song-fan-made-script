-- Tokyo Night AutoPlayer (Fan-Made)
-- Работает в Starving Pianist через Xeno / Synapse X

local VirtualInputManager = game:GetService("VirtualInputManager")

local notes = {
    "z", "x", "c", "v", "b", "v", "c", "x",
    "g", "h", "j", "k", "l", "k", "j", "h",
    "t", "y", "u", "i", "o", "i", "u", "y",
    "g", "h", "j", "k", "l", "k", "j", "h"
}

local delay = 0.2

for _, key in ipairs(notes) do
    VirtualInputManager:SendKeyEvent(true, key, false, game)
    wait(0.05)
    VirtualInputManager:SendKeyEvent(false, key, false, game)
    wait(delay)
end
