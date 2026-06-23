# Executed when the pregame timer ends and the game begins!

bossbar set rsot:pregame players
title @a[predicate=rsot:in_tomb_dimension] clear
execute as @e[tag=rsot_timer] at @s run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:redstone_block replace minecraft:bedrock
data modify storage rsot:game state set value "running"
gamerule fire_damage true
gamerule fall_damage true

# Allow path segments to generate
data modify storage rsot:generation activated set value true

# Ensure title display fade in, fade out, and duration are set
title @a[predicate=rsot:in_tomb_dimension] times 0t 90t 10t
