# Executed when a teammember tries to free a player after they died

# Fail, cannot free player
execute positioned ^ ^3 ^-3 unless entity @p[distance=..1] as @a[distance=..10] run function rsot:playsound/add_sand_failure
execute positioned ^ ^3 ^-3 unless entity @p[distance=..1] run return run loot give @p loot minecraft:blocks/red_sand

# Success
execute as @a[distance=..10] run function rsot:playsound/cage_door_open
setblock ^ ^-9 ^2 minecraft:redstone_block
# $execute as @e[type=minecraft:block_display,distance=..10,tag=cell_$(cell_number)] at @s run tp ~ ~2 ~