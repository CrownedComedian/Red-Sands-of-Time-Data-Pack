# Executed when a teammate frees another player after they died

function rsot:playsound/cage_door_open

execute as @p[tag=!free] run loot give @s loot rsot:respawn_items
execute as @p[tag=!free] run function rsot:item/equip_start_armor with entity @n[type=minecraft:marker,tag=rsot_timer,distance=..60] data

effect give @p[tag=!free] minecraft:glowing infinite 0 true
effect give @p[tag=!free] minecraft:saturation infinite 0 true

tag @p[tag=!free] add free