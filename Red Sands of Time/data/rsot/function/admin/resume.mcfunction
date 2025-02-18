# Unpause the game
# see game/resume_end.mcfunction for unpause commands

# Do nothing if the game is currently running
execute if data storage rsot:game {state:"pregame"} run return run tellraw @s "the game is already running"
execute if data storage rsot:game {state:"running"} run return run tellraw @s "the game is already running"

# Begin the resume timer
scoreboard players set #resume time_remaining 6

# Temporarily change title times
title @a[predicate=rsot:in_tomb_dimension] times 0t 25t 0t

execute if data storage rsot:game {state:"pregame-paused"} run data modify storage rsot:game state set value "pregame-resuming"
execute if data storage rsot:game {state:"paused"} run data modify storage rsot:game state set value "resuming"

function rsot:game/resume_loop