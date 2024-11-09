# Executed every 1 second of an active game.

# Do nothing if the game is paused
execute if data storage rsot:game {"paused":true} run return 0

# Update scoreboard values and storage data for this tomb
$scoreboard players remove $(team) time_remaining 1
$scoreboard players remove $(team) gong_sounds 1
$execute store result storage rsot:timers $(team).empty_time float 0.1 run scoreboard players add $(team) empty_time 1

# Animate sand sinking down
execute as @e[type=minecraft:block_display,tag=sinking] at @s run tp @s ~ ~-0.1 ~

# Kill expired sand
execute at @n[type=minecraft:marker,tag=rsot_timer] run kill @e[type=minecraft:block_display,distance=0..0.8,tag=sinking]

# Add sand from sand queue
$execute if score $(team) sand_queue matches 1.. align xyz run summon minecraft:block_display ^ ^15 ^5 {brightness:{block:10,sky:10},block_state:{Name:"minecraft:red_sand"},Tags:["falling"],teleport_duration:20}
$function rsot:tp/sand_down with storage rsot:timers $(team)
$execute if score $(team) sand_queue matches 1.. store result storage rsot:timers $(team).empty_time float 0.1 run scoreboard players remove $(team) empty_time 10
$execute if score $(team) sand_queue matches 1.. run scoreboard players remove $(team) sand_queue 1
execute as @e[type=minecraft:block_display,tag=falling] at @s run tag @s add sinking
execute as @e[type=minecraft:block_display,tag=falling] at @s run tag @s remove falling

# Play gong sounds
$scoreboard players operation $(team) gong_sounds %= #10 time_remaining
$execute unless score $(team) time_remaining matches 20 if score $(team) gong_sounds matches 0 as @a[distance=..300] at @s run function rsot:playsound/10_seconds
$execute if score $(team) time_remaining matches 20 as @a[distance=..300] at @s run function rsot:playsound/20_seconds
$execute if score $(team) time_remaining matches 1..9 as @a[distance=..300] at @s run function rsot:playsound/10_seconds

# Check for game end
# The game is over if there are no "free" players OR if the timer runs out of time
$execute if score $(team) time_remaining matches 0 run setblock ^1 ^ ^ minecraft:bedrock
$execute if score $(team) time_remaining matches 0 run function rsot:tp/to_cage with storage rsot:game respawn.caged
execute unless entity @p[distance=..300,tag=free] run function rsot:tp/to_cage with storage rsot:game respawn.caged
