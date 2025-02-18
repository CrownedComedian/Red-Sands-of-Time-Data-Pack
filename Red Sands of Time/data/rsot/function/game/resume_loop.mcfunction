# Executed every 1 second between updating the game state from paused to running.

# Destroy timer if the game was abruptly paused again
execute if data storage rsot:game {state:"pregame-paused"} run return 0
execute if data storage rsot:game {state:"paused"} run return 0

scoreboard players remove #resume time_remaining 1

# Title display for resume countdown
execute if score #resume time_remaining matches 1..10 run title @a[predicate=rsot:in_tomb_dimension] title {"text":"Resuming in","color":"aqua"}
execute if score #resume time_remaining matches 5 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►5◄","bold":true,"color":"white"}
execute if score #resume time_remaining matches 4 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►4◄","bold":true,"color":"white"}
execute if score #resume time_remaining matches 3 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►3◄","bold":true,"color":"red"}
execute if score #resume time_remaining matches 2 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►2◄","bold":true,"color":"yellow"}
execute if score #resume time_remaining matches 1 run title @a[predicate=rsot:in_tomb_dimension] subtitle {"text":"►1◄","bold":true,"color":"green"}

# Playsounds for pre-game countdown
execute if score #resume time_remaining matches 0..10 as @a[predicate=rsot:in_tomb_dimension] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1.0 0.707107
execute if score #resume time_remaining matches 0..3 as @a[predicate=rsot:in_tomb_dimension] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1.0 0.707107
execute if score #resume time_remaining matches 0 as @a[predicate=rsot:in_tomb_dimension] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 1.414214

execute if score #resume time_remaining matches 0 run title @a[predicate=rsot:in_tomb_dimension] clear

# Break case
execute if score #resume time_remaining matches 0 run return run function rsot:game/resume_end

schedule function rsot:game/resume_loop 1s