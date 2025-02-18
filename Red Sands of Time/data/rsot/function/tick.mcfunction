# Lapis particles
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:lapis_lazuli"}}] if predicate rsot:fifteen_percent_random_roll run particle minecraft:ominous_spawning ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal
execute at @e[type=minecraft:item_display,nbt={item:{id:"minecraft:lapis_lazuli"}}] if predicate rsot:fifteen_percent_random_roll run particle minecraft:ominous_spawning ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal

# Lapis reward
execute as @a[nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]}] run function rsot:find_lapis_lazuli with entity @s Inventory[{components:{"minecraft:custom_data":{rsot:{team_data:{}}}}}].components."minecraft:custom_data".rsot.team_data

# Key particles
execute at @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_model_data":776801}}}] run particle dust{color:[0.56, 0.13, 0.13], scale:0.4} ~ ~0.2 ~ 0.1 0.1 0.1 1 1 normal
execute at @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_model_data":776802}}}] run particle dust{color:[0.95, 0.69, 0.08], scale:0.4} ~ ~0.2 ~ 0.1 0.1 0.1 1 1 normal
execute at @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_model_data":776803}}}] run particle dust{color:[0.29, 0.36, 0.14], scale:0.4} ~ ~0.2 ~ 0.1 0.1 0.1 1 1 normal
execute at @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_model_data":776804}}}] run particle dust{color:[0.17, 0.18, 0.56], scale:0.4} ~ ~0.2 ~ 0.1 0.1 0.1 1 1 normal

# Player head item tags
# Used for red key puzzles
execute at @e[type=minecraft:interaction,tag=alphabet,nbt={attack:{}}] run setblock ~ ~ ~ air destroy
execute at @e[type=minecraft:interaction,tag=alphabet,nbt={attack:{}}] as @e[type=minecraft:interaction,tag=alphabet,nbt={attack:{}}] if block ~ ~ ~ minecraft:air run kill @s

kill @e[type=minecraft:experience_orb]

# On player death
execute as @a[scores={death=1..},tag=free] run function rsot:player_died

# If the game is paused:

# run paused game tick function
execute if data storage rsot:game {state:"pregame-paused"} run return run function rsot:game/paused_tick
execute if data storage rsot:game {state:"paused"} run return run function rsot:game/paused_tick
execute if data storage rsot:game {state:"pregame-resuming"} run return run function rsot:game/paused_tick
execute if data storage rsot:game {state:"resuming"} run return run function rsot:game/paused_tick

# Else:

# Regen cooldown
scoreboard players remove #RegenCooldown time_remaining 1
execute if score #RegenCooldown time_remaining matches 0 run effect give @a[predicate=rsot:in_rsot_dimension] minecraft:regeneration 1 2 true
execute if score #RegenCooldown time_remaining matches 0 run scoreboard players set #RegenCooldown time_remaining 60

# Lapis pickup cooldown
scoreboard players remove @a lapis_pickup_cooldown 1