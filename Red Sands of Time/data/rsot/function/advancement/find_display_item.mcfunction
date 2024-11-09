# Executes when the player walks into a light block

execute as @e[type=minecraft:item_display,limit=1,sort=nearest] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:item_display,limit=1,sort=nearest] at @s run function rsot:give/items with entity @s

advancement revoke @s only rsot:custom/find_display_item