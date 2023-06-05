# Emergency Crash Landing Kit for Factorio

This mod provides players with an emergency crash landing kit containing useful items and equipment when they join the game for the first time or respawn after death.

## Initialization

The mod initializes by assigning the `global.firstplayer` variable as `true` during the `on_init` event. This variable helps identify the first player who joins the game.

## First Player Join Event

When the first player joins the game (`on_player_joined_game` event), the following actions are performed:

- If the player is in a cutscene, their character is replaced with the cutscene character.
- The player's force is modified with increased properties:
    - `ghost_time_to_live` is set to 7 days (60 seconds * 60 minutes * 24 hours * 7 days).
    - `worker_robots_speed_modifier`, `manual_crafting_speed_modifier`, `manual_mining_speed_modifier`, and `laboratory_speed_modifier` are all set to 3.0.

Once these modifications are applied, the `global.firstplayer` variable is set to `false` to prevent running the actions again.

A message is then displayed in the game notifying other players that the joining player has opened an emergency crash landing kit, which contains useful items.

The following items are inserted into the player's inventory:

- Gun and Ammo:
    - 1x Submachine Gun
    - 200x Piercing Rounds Magazine

- Modular Armor and Robot Kit:
    - 20x Construction Robot
    - 1x Modular Armor equipped with:
        - 2x Battery Equipment
        - 1x Personal Roboport Equipment
        - 1x Personal Laser Defense Equipment
        - 13x Solar Panel Equipment

- Intermediate Items:
    - 100x Iron Plate
    - 100x Pipe
    - 25x Pipe-to-ground
    - 100x Copper Plate
    - 100x Steel Plate
    - 100x Iron Gear Wheel
    - 100x Electronic Circuit

- Belts:
    - 300x Transport Belt
    - 20x Underground Belt
    - 20x Splitter

- Inserters:
    - 20x Burner Inserter
    - 50x Inserter
    - 25x Fast Inserter
    - 25x Long-Handed Inserter

- Power Poles:
    - 25x Small Electric Pole
    - 25x Medium Electric Pole
    - 5x Big Electric Pole
    - 20x Small Lamp

- Solar Power:
    - 10x Solar Panel
    - 25x Accumulator

- Coal Power:
    - 4x Boiler
    - 8x Steam Engine

- Miners:
    - 25x Burner Mining Drill
    - 25x Electric Mining Drill

- Furnace:
    - 20x Stone Furnace
    - 10x Steel Furnace
    - 4x Electric Furnace

- Defense:
    - 400x Stone Wall
    - 100x Gun Turret
    - 1000x Firearm Magazine

- Automation:
    - 20x Assembling Machine 1
    - 10x Assembling Machine 2
    - 4x Assembling Machine 3

- Oil:
    - 2x Oil Refinery
    - 4x Chemical Plant
    - 4x Pumpjack

## Player Respawn Event

When a player respawns (`on_player_respawned` event), the following actions are performed:

- A message is displayed in the game notifying other players that the respawned clone of the player has been printed with useful gear.

The following items are inserted into the player's inventory:

- Something to drive with:
    - 1x Tank
    - 10x Rocket Fuel

- Power Armor:
    - 1x Modular Armor

- Gun and Ammo:
    - 1x Submachine Gun
    - 400x Piercing Rounds Magazine
