# Executed every tick the game is paused

# Kill new mobs that spawn to prevent new hostile mobs from attacking players
execute as @e[predicate=rsot:is_hostile_mob_of_game,nbt=!{NoAI:1b}] run kill @s

# Stop players once their feet have touched the ground
execute as @a[predicate=rsot:in_tomb_dimension,gamemode=adventure,nbt={OnGround:1b},tag=rsot_needs_to_stop] at @s summon minecraft:marker rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @a[predicate=rsot:in_tomb_dimension,gamemode=adventure,nbt={OnGround:1b},tag=rsot_needs_to_stop] at @s run tag @n[type=marker,distance=0..1] add rsot_stop
execute as @a[predicate=rsot:in_tomb_dimension,gamemode=adventure,nbt={OnGround:1b},tag=rsot_needs_to_stop] run tag @s remove rsot_needs_to_stop

# Prevent players from moving away
execute as @a[predicate=rsot:in_tomb_dimension,gamemode=adventure] at @s unless entity @n[type=minecraft:marker,tag=rsot_stop,distance=0..1] run tp @s @n[type=minecraft:marker,tag=rsot_stop]