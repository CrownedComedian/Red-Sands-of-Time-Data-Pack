# Executed when a teammate frees another player after they died

execute as @a[distance=..10] run function rsot:playsound/cage_door_open

execute positioned ^ ^-4 ^1 summon minecraft:marker run tag @s add here

execute as @p[tag=!rsot_free,distance=0..2] run loot give @s loot rsot:respawn_items
execute as @p[tag=!rsot_free,distance=0..2] run function rsot:item/equip_start_armor with entity @n[type=minecraft:marker,tag=rsot_timer,distance=..60] data

execute positioned ^ ^-4 ^1 as @n[type=minecraft:interaction,tag=rsot_jail,distance=0..1] at @s run tp @s ~ 33.1 ~
tag @p[tag=!rsot_free,distance=0..2] add rsot_free