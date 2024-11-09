# Executed when a player attempts to add sand at the base of the timer.

# Fail, cannot add sand
$execute unless score $(team) time_remaining matches 1..119 as @a[distance=..10] run function rsot:playsound/add_sand_failure
$execute unless score $(team) time_remaining matches 1..119 run return run loot give @p loot minecraft:blocks/red_sand

# Success
execute as @a[distance=..10] run function rsot:playsound/add_sand_success
$scoreboard players add $(team) sand_queue 1
$scoreboard players add $(team) time_remaining 10