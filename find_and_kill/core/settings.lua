local gui = require "gui"
local settings = {
    enabled = false,
    elites_only = false,
    pit_level = 1,
    loot_enabled = true, -- Default to true
    path_angle = 10,
    reset_time = 1 -- Default to 1
}

function settings:update_settings()
    settings.enabled = gui.elements.main_toggle:get()
    settings.elites_only = gui.elements.elite_only_toggle:get()
    settings.loot_enabled = gui.elements.loot_toggle:get()
    settings.loot_modes = gui.elements.loot_modes:get()
    settings.path_angle = gui.elements.path_angle_slider:get()
end

return settings