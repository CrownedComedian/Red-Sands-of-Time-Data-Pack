# Executed when a player adds sand at the base of the timer.

execute as @a[distance=..10] run function rsot:playsound/add_sand_success
$scoreboard players add $(team) sand_queue 1
$scoreboard players add $(team) time_remaining 10

# Lock the timer if it is full
$execute if score $(team) time_remaining matches 120.. as @n[type=interaction,tag=rsot_timer,distance=0..10] at @s run tp @s ~ ~1 ~