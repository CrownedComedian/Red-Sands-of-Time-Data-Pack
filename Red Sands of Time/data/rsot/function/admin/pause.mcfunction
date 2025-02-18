# Do nothing if the game is already paused
execute if data storage rsot:game {state:"pregame-paused"} run return run tellraw @s "the game is already paused"
execute if data storage rsot:game {state:"paused"} run return run tellraw @s "the game is already paused"

# Temporaily remove periodic regen effect
effect clear @a[predicate=rsot:in_tomb_dimension,gamemode=adventure] minecraft:regeneration

# Freeze all players
execute as @a[predicate=rsot:in_tomb_dimension,gamemode=adventure] run tag @s add rsot_needs_to_stop
execute as @a[predicate=rsot:in_tomb_dimension,gamemode=adventure] run attribute @s minecraft:jump_strength modifier add rsot_stop -0.41999998697815 add_value
execute as @a[predicate=rsot:in_tomb_dimension,gamemode=adventure] run attribute @s minecraft:block_interaction_range modifier add rsot_stop -4.5 add_value
execute as @a[predicate=rsot:in_tomb_dimension,gamemode=adventure] run attribute @s minecraft:entity_interaction_range modifier add rsot_stop -3.0 add_value

# Freeze all roaming hostile mobs
execute as @e[predicate=rsot:is_hostile_mob_of_game,tag=!rsot_frozen_mob] run data modify entity @s NoAI set value true

# Pause the game
execute if data storage rsot:game {state:"pregame"} run data modify storage rsot:game state set value "pregame-paused"
execute if data storage rsot:game {state:"running"} run data modify storage rsot:game state set value "paused"
execute if data storage rsot:game {state:"pregame-resuming"} run data modify storage rsot:game state set value "pregame-paused"
execute if data storage rsot:game {state:"resuming"} run data modify storage rsot:game state set value "paused"

# Show title
title @a[predicate=rsot:in_tomb_dimension] title {"text":"The game was paused!","color":"aqua"}