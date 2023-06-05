script.on_init(function()
    if (global.firstplayer == nil) then
        global.firstplayer = true
    end
end)

script.on_event(defines.events.on_player_joined_game, function(event)
    local player = game.players[event.player_index]

    if (global.firstplayer == true) then
        if (player.cutscene_character) then
            player = player.cutscene_character
        end
        player.force.ghost_time_to_live = 60 * 60 * 60 * 24 * 7
        player.force.worker_robots_speed_modifier = 3.0
        player.force.manual_crafting_speed_modifier = 3.0
        player.force.manual_mining_speed_modifier = 3.0
        player.force.laboratory_speed_modifier = 3.0

        -- Dont run agian
        global.firstplayer = false
    end

    local playerName = game.players[event.player_index].name
    local reference = "known_player_" .. playerName
    if global[reference] == nil then
        game.print(playerName .. " opened a emergency crash landing kit, wow this kit has really useful stuff!")
        global[reference] = true

        -- Gun and Ammo
        player.get_inventory(defines.inventory.character_guns).clear()
        player.get_inventory(defines.inventory.character_ammo).clear()
        player.insert({ name = "submachine-gun", count = 1 })
        player.insert({ name = "piercing-rounds-magazine", count = 200 })

        -- Modular Armor and Robot Kit
        player.insert({ name = "construction-robot", count = 20 })
        player.insert({ name = "modular-armor", count = 1 })
        local armor = player.get_inventory(defines.inventory.character_armor)[1]
        for _ = 1, 2 do
            armor.grid.put({ name = "battery-equipment" })
        end
        armor.grid.put({ name = "personal-roboport-equipment" })
        armor.grid.put({ name = "personal-laser-defense-equipment" })
        for _ = 1, 13 do
            armor.grid.put({ name = "solar-panel-equipment" })
        end

        -- Intermediate items
        player.insert({ name = "iron-plate", count = 100 })
        player.insert({ name = "pipe", count = 100 })
        player.insert({ name = "pipe-to-ground", count = 25 })
        player.insert({ name = "copper-plate", count = 100 })
        player.insert({ name = "steel-plate", count = 100 })
        player.insert({ name = "iron-gear-wheel", count = 100 })
        player.insert({ name = "electronic-circuit", count = 100 })

        -- Belts
        player.insert({ name = "transport-belt", count = 300 })
        player.insert({ name = "underground-belt", count = 20 })
        player.insert({ name = "splitter", count = 20 })

        -- Inserters
        player.insert({ name = "burner-inserter", count = 20 })
        player.insert({ name = "inserter", count = 50 })
        player.insert({ name = "fast-inserter", count = 25 })
        player.insert({ name = "long-handed-inserter", count = 25 })

        -- Power Poles
        player.insert({ name = "small-electric-pole", count = 25 })
        player.insert({ name = "medium-electric-pole", count = 25 })
        player.insert({ name = "big-electric-pole", count = 5 })
        player.insert({ name = "small-lamp", count = 20 })

        -- Solar Power
        player.insert({ name = "solar-panel", count = 10 })
        player.insert({ name = "accumulator", count = 25 })

        -- Coal Power
        player.insert({ name = "boiler", count = 4 })
        player.insert({ name = "steam-engine", count = 8 })

        -- Miners
        player.insert({ name = "burner-mining-drill", count = 25 })
        player.insert({ name = "electric-mining-drill", count = 25 })

        -- Furnace
        player.insert({ name = "stone-furnace", count = 20 })
        player.insert({ name = "steel-furnace", count = 10 })
        player.insert({ name = "electric-furnace", count = 4 })

        -- Defence
        player.insert({ name = "stone-wall", count = 400 })
        player.insert({ name = "gun-turret", count = 100 })
        player.insert({ name = "firearm-magazine", count = 1000 })

        -- Automation
        player.insert({ name = "assembling-machine-1", count = 20 })
        player.insert({ name = "assembling-machine-2", count = 10 })
        player.insert({ name = "assembling-machine-3", count = 4 })

        -- Oil
        player.insert({ name = "oil-refinery", count = 2 })
        player.insert({ name = "chemical-plant", count = 4 })
        player.insert({ name = "pumpjack", count = 4 })

    end
end)

script.on_event(defines.events.on_player_respawned, function(event)
    player = game.players[event.player_index]

    game.print("The respawn clone of " .. player.name .. " got 3d printed with some ussefull gear already on them.")

    -- Something to drive with
    player.insert({ name = "tank", count = 1 })
    player.insert({ name = "rocket-fuel", count = 10 })

    -- Power Armor
    player.insert({ name = "modular-armor", count = 1 })

    -- Gun and Ammo
    player.get_inventory(defines.inventory.character_guns).clear()
    player.get_inventory(defines.inventory.character_ammo).clear()
    player.insert({ name = "submachine-gun", count = 1 })
    player.insert({ name = "piercing-rounds-magazine", count = 400 })
end)
