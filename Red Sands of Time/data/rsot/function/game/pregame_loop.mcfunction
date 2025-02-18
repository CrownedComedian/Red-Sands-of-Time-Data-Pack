# Executed every 1 second of the pre-game game.

# Run idle if paused
execute if data storage rsot:game {"state":"pregame-paused"} run return run schedule function rsot:game/pregame_loop 1s

# Break case
execute if score #pregame time_remaining matches 0 run return run function rsot:game/pregame_end

execute store result bossbar rsot:pregame value run scoreboard players remove #pregame time_remaining 1

# Title display for pre-game countdown
execute if score #pregame time_remaining matches 1..10 run title @a[predicate=rsot:in_tomb_dimension] title {"text":"Starting in","color":"aqua"}
execute if score #pregame time_remaining matches 10 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►10◄","bold":true,"color":"white"}
execute if score #pregame time_remaining matches 9 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►9◄","bold":true,"color":"white"}
execute if score #pregame time_remaining matches 8 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►8◄","bold":true,"color":"white"}
execute if score #pregame time_remaining matches 7 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►7◄","bold":true,"color":"white"}
execute if score #pregame time_remaining matches 6 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►6◄","bold":true,"color":"white"}
execute if score #pregame time_remaining matches 5 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►5◄","bold":true,"color":"white"}
execute if score #pregame time_remaining matches 4 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►4◄","bold":true,"color":"white"}
execute if score #pregame time_remaining matches 3 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►3◄","bold":true,"color":"red"}
execute if score #pregame time_remaining matches 2 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►2◄","bold":true,"color":"yellow"}
execute if score #pregame time_remaining matches 1 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►1◄","bold":true,"color":"green"}

# Playsounds for pre-game countdown
execute if score #pregame time_remaining matches 0..10 as @a[predicate=rsot:in_tomb_dimension] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1.0 0.707107
execute if score #pregame time_remaining matches 0..3 as @a[predicate=rsot:in_tomb_dimension] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1.0 0.707107
execute if score #pregame time_remaining matches 0 as @a[predicate=rsot:in_tomb_dimension] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 1.414214

execute if score #pregame time_remaining matches 0 run bossbar set rsot:pregame players
execute if score #pregame time_remaining matches 0 run title @a[predicate=rsot:in_tomb_dimension] clear
execute if score #pregame time_remaining matches 0 as @e[tag=rsot_timer] at @s run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:redstone_block replace minecraft:bedrock
execute if score #pregame time_remaining matches 0 run data modify storage rsot:game state set value "running"

schedule function rsot:game/pregame_loop 1s