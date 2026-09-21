# Executed when a dead player respawns in jail
tag @s remove rsot_dead

effect give @p[tag=!rsot_free,distance=0..2] minecraft:glowing infinite 0 true
effect give @p[tag=!rsot_free,distance=0..2] minecraft:saturation infinite 0 true

# Ensure the composter is ready for use
execute as @n[type=interaction,tag=rsot_jail,distance=0..4] at @s run say interaction is moving
execute as @n[type=interaction,tag=rsot_jail,distance=0..4] at @s run tp @s ~ 32.1 ~
