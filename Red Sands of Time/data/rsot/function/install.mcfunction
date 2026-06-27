# This function is executed only once ever

playsound minecraft:ui.button.click master @a ^ ^9 ^
time set 90

# Remove the sign
fill ^-5 ^4 ^-1 ^5 ^11 ^ minecraft:air replace
execute positioned ~ ~10 ~ run kill @n[type=minecraft:text_display,limit=2]
execute positioned ~ ~10 ~ run kill @n[type=minecraft:block_display]

# Init const data
data remove storage rsot:all_cell_exits content
data modify storage rsot:all_cell_exits content append value "exit_left"
data modify storage rsot:all_cell_exits content append value "exit_forward"
data modify storage rsot:all_cell_exits content append value "exit_right"

data remove storage rsot:all_algorithms content
data modify storage rsot:all_algorithms content append value "terminal"
data modify storage rsot:all_algorithms content append value "bifurcated"
data modify storage rsot:all_algorithms content append value "bushy"

data modify storage rsot:shuffled_list min set value 0

data remove storage rsot:all_paths content
data modify storage rsot:all_paths content append value {destination:"red_key", id:"minecraft:red_concrete"}
data modify storage rsot:all_paths content append value {destination:"red_vault", id:"minecraft:red_glazed_terracotta"}
data modify storage rsot:all_paths content append value {destination:"yellow_key", id:"minecraft:yellow_concrete"}
data modify storage rsot:all_paths content append value {destination:"yellow_vault", id:"minecraft:yellow_glazed_terracotta"}
data modify storage rsot:all_paths content append value {destination:"green_key", id:"minecraft:green_concrete"}
data modify storage rsot:all_paths content append value {destination:"green_vault", id:"minecraft:green_glazed_terracotta"}
data modify storage rsot:all_paths content append value {destination:"lapis_key", id:"minecraft:blue_concrete"}
data modify storage rsot:all_paths content append value {destination:"lapis_vault", id:"minecraft:light_blue_glazed_terracotta"}
data modify storage rsot:all_paths content append value {destination:"pink_key", id:"minecraft:pink_concrete"}
data modify storage rsot:all_paths content append value {destination:"pink_vault", id:"minecraft:pink_glazed_terracotta"}
data modify storage rsot:all_paths content append value {destination:"cyan_key", id:"minecraft:cyan_concrete"}
data modify storage rsot:all_paths content append value {destination:"cyan_vault", id:"minecraft:cyan_glazed_terracotta"}
data modify storage rsot:all_paths content append value {destination:"gray_key", id:"minecraft:gray_concrete"}
data modify storage rsot:all_paths content append value {destination:"gray_vault", id:"minecraft:gray_glazed_terracotta"}
data modify storage rsot:all_paths content append value {destination:"purple_key", id:"minecraft:purple_concrete"}
data modify storage rsot:all_paths content append value {destination:"purple_vault", id:"minecraft:purple_glazed_terracotta"}
data modify storage rsot:all_paths content append value {destination:"dead_end", id:"minecraft:black_terracotta"}

data remove storage rsot:all_timer_basement_paths content
data modify storage rsot:all_timer_basement_paths content append from storage rsot:all_paths content[{destination:"dead_end"}]
data modify storage rsot:all_timer_basement_paths content append from storage rsot:all_paths content[{destination:"green_key"}]
data modify storage rsot:all_timer_basement_paths content append from storage rsot:all_paths content[{destination:"pink_key"}]

# Init to standard preset
function rsot:presets/standard

data modify storage rsot:generation activated set value false

# Init jukebox data
data remove storage rsot:jukebox songs
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.cat", duration:186}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.blocks", duration:343}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.chirp", duration:187}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.far", duration:192}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.mall", duration:198}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.mellohi", duration:98}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.stal", duration:152}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.strad", duration:188}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.lava_chicken", duration:135}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.ward", duration:250}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.tears", duration:175}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.wait", duration:238}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.pigstep", duration:148}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.precipice", duration:299}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.otherside", duration:195}
data modify storage rsot:jukebox songs append value {song:"minecraft:music_disc.relic", duration:218}
data modify storage rsot:jukebox shuffle set value true
data modify storage rsot:jukebox repeat set value false

# Activate liminal space structures:

# Activate respawns
# (see rsot:data/install_escaped_respawn.mcfunction and rsot:data/install_caged_respawn.mcfunction)
fill ^ ^-10 ^-34 ^ ^10 ^-34 minecraft:redstone_block replace minecraft:bedrock
fill ^ ^-10 ^-40 ^ ^10 ^-40 minecraft:redstone_block replace minecraft:bedrock

# Activate dance floor
fill ^2 ^-4 ^-41 ^2 ^16 ^-41 minecraft:redstone_block replace minecraft:bedrock
function rsot:jukebox/next

# Activate team tents:

# Lime tent
fill ^11 ^-10 ^14 ^7 ^10 ^14 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^4 ^ ^27 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:5, fence_type:"jungle_fence"}

# Orange tent
fill ^-9 ^-10 ^14 ^-13 ^10 ^14 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^-4 ^ ^27 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:1, fence_type:"dark_oak_fence"}

# Pink tent
fill ^24 ^-10 ^27 ^24 ^10 ^31 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^12 ^ ^27 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:6, fence_type:"jungle_fence"}

# Aqua tent
fill ^-24 ^-10 ^29 ^-24 ^10 ^33 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^-12 ^ ^26 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:3, fence_type:"jungle_fence"}

# Red tent
fill ^26 ^-10 ^40 ^26 ^10 ^44 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^11 ^ ^38 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:14, fence_type:"dark_oak_fence"}

# Green tent
fill ^-26 ^-10 ^42 ^-26 ^10 ^46 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^-10 ^ ^41 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..10] at @s run function rsot:data/sheep {color:13, fence_type:"jungle_fence"}

# Yellow tent
fill ^21 ^-10 ^53 ^21 ^10 ^57 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^7 ^ ^52 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:12, fence_type:"dark_oak_fence"}

# Blue tent
fill ^-21 ^-10 ^55 ^-21 ^10 ^59 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^-8 ^ ^50 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:11, fence_type:"dark_oak_fence"}

# Purple tent
fill ^10 ^-10 ^72 ^6 ^10 ^72 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^5 ^ ^61 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..10] at @s run function rsot:data/sheep {color:10, fence_type:"jungle_fence"}

# Cyan tent
fill ^-4 ^-10 ^72 ^-8 ^10 ^72 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^-9 ^ ^60 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:9, fence_type:"dark_oak_fence"}

# Activate spynx gas:
fill ^20 ^-10 ^-15 ^20 ^10 ^-15 minecraft:redstone_block replace minecraft:bedrock
fill ^-20 ^-10 ^-15 ^-20 ^10 ^-15 minecraft:redstone_block replace minecraft:bedrock

# Init to open state
function rsot:game/open

kill @n[type=item,distance=..10]

# Apply effects
effect give @e[predicate=rsot:in_liminal_space] minecraft:resistance infinite 255 true

tellraw @p [{text:"Red Sands of Time has been installed!", color:"#b09870"}]
tellraw @p [{text:"The game state defaults to 'open' allowing players to ready up in their tents", color:"white"}]
tellraw @p [{text:"Use the admin book to control the game", color:"white"}]