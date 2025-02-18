# Executed when the resume timer ends

# Resume the previous game state
execute if data storage rsot:game {state:"pregame-resuming"} run data modify storage rsot:game state set value "pregame"
execute if data storage rsot:game {state:"resuming"} run data modify storage rsot:game state set value "running"

# Ensure title display fade in, fade out, and duration are set
title @a[predicate=rsot:in_tomb_dimension] times 0t 90t 10t

# Unfreeze all players
execute as @a[predicate=rsot:in_tomb_dimension,gamemode=adventure] run attribute @s minecraft:jump_strength modifier remove rsot_stop
# execute as @a[predicate=rsot:in_tomb_dimension,gamemode=adventure] run attribute @s minecraft:gravity modifier remove rsot_stop
execute as @a[predicate=rsot:in_tomb_dimension,gamemode=adventure] run attribute @s minecraft:block_interaction_range modifier remove rsot_stop
execute as @a[predicate=rsot:in_tomb_dimension,gamemode=adventure] run attribute @s minecraft:entity_interaction_range modifier remove rsot_stop

# Unfreeze all roaming hostile mobs
execute as @e[predicate=rsot:is_hostile_mob_of_game,tag=!rsot_frozen_mob] run data modify entity @s NoAI set value false

# Kill all stop markers
kill @e[tag=rsot_stop]