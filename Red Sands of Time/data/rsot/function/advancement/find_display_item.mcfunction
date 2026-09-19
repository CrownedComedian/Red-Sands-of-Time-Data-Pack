# Executes when the player walks into a light block

execute as @n[type=minecraft:item_display,distance=..1] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:light
execute as @n[type=minecraft:item_display,distance=..1] at @s run function rsot:give/items with entity @s

advancement revoke @s through rsot:custom/find_display_item