# Designed to be executed by a command block hidden below a frozen mob in a tomb

# Only unfreeze the mob if we are in a rsot tomb dimension
execute unless biome ~ ~ ~ rsot:void run return 0

# Unfreeze the mob
data modify entity @e[limit=1,distance=0..4,sort=nearest,tag=rsot_frozen_mob] NoAI set value false
data modify entity @e[limit=1,distance=0..4,sort=nearest,tag=rsot_frozen_mob] Silent set value false
tag @e[limit=1,distance=0..4,sort=nearest,tag=rsot_frozen_mob] remove rsot_frozen_mob

# Break the glass and top half slab
fill ~ ~2 ~ ~ ~5 ~ minecraft:air destroy