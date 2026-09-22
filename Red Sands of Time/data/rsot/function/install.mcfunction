# This function is executed only once ever

# Apply gamerules (execute in each dimension for Bukkit support)
execute in rsot:liminal_space run function rsot:gamerules
execute in rsot:red_rabbits run function rsot:gamerules
execute in rsot:orange_ocelots run function rsot:gamerules
execute in rsot:yellow_yaks run function rsot:gamerules
execute in rsot:lime_llamas run function rsot:gamerules
execute in rsot:green_geckos run function rsot:gamerules
execute in rsot:cyan_coyotes run function rsot:gamerules
execute in rsot:aqua_axolotls run function rsot:gamerules
execute in rsot:blue_bats run function rsot:gamerules
execute in rsot:purple_pandas run function rsot:gamerules
execute in rsot:pink_parrots run function rsot:gamerules

playsound minecraft:ui.button.click master @a ^ ^9 ^
time set 90

# Remove the sign
fill ^-5 ^4 ^-1 ^5 ^11 ^ minecraft:air replace
execute positioned ~ ~10 ~ run kill @n[type=minecraft:text_display,limit=2]
execute positioned ~ ~10 ~ run kill @n[type=minecraft:block_display]

# Init const data
data remove storage rsot:all_cell_exits content
data modify storage rsot:all_cell_exits content append value "left"
data modify storage rsot:all_cell_exits content append value "forward"
data modify storage rsot:all_cell_exits content append value "right"

data remove storage rsot:all_algorithms content
data modify storage rsot:all_algorithms content append value "terminal"
data modify storage rsot:all_algorithms content append value "bifurcated"
data modify storage rsot:all_algorithms content append value "bushy"

data modify storage rsot:shuffled_list min set value 0

data remove storage rsot:all_paths content
data modify storage rsot:all_paths content append value {path_type:"red_key", id:"minecraft:red_concrete"}
data modify storage rsot:all_paths content append value {path_type:"red_vault", id:"minecraft:red_glazed_terracotta"}
data modify storage rsot:all_paths content append value {path_type:"yellow_key", id:"minecraft:yellow_concrete"}
data modify storage rsot:all_paths content append value {path_type:"yellow_vault", id:"minecraft:yellow_glazed_terracotta"}
data modify storage rsot:all_paths content append value {path_type:"green_key", id:"minecraft:green_concrete"}
data modify storage rsot:all_paths content append value {path_type:"green_vault", id:"minecraft:green_glazed_terracotta"}
data modify storage rsot:all_paths content append value {path_type:"lapis_key", id:"minecraft:blue_concrete"}
data modify storage rsot:all_paths content append value {path_type:"lapis_vault", id:"minecraft:light_blue_glazed_terracotta"}
data modify storage rsot:all_paths content append value {path_type:"pink_key", id:"minecraft:pink_concrete"}
data modify storage rsot:all_paths content append value {path_type:"pink_vault", id:"minecraft:pink_glazed_terracotta"}
data modify storage rsot:all_paths content append value {path_type:"cyan_key", id:"minecraft:cyan_concrete"}
data modify storage rsot:all_paths content append value {path_type:"cyan_vault", id:"minecraft:cyan_glazed_terracotta"}
data modify storage rsot:all_paths content append value {path_type:"gray_key", id:"minecraft:gray_concrete"}
data modify storage rsot:all_paths content append value {path_type:"gray_vault", id:"minecraft:gray_glazed_terracotta"}
data modify storage rsot:all_paths content append value {path_type:"purple_key", id:"minecraft:purple_concrete"}
data modify storage rsot:all_paths content append value {path_type:"purple_vault", id:"minecraft:purple_glazed_terracotta"}
data modify storage rsot:all_paths content append value {path_type:"dead_end", id:"minecraft:black_terracotta"}

data remove storage rsot:all_timer_basement_paths content
data modify storage rsot:all_timer_basement_paths content append from storage rsot:all_paths content[{path_type:"dead_end"}]
data modify storage rsot:all_timer_basement_paths content append from storage rsot:all_paths content[{path_type:"green_key"}]
data modify storage rsot:all_timer_basement_paths content append from storage rsot:all_paths content[{path_type:"pink_key"}]

# Ensure teams are created and colored
function rsot:install_team {snake_name:"red_rabbits", display_name:"Red Rabbits", color:"red"}
function rsot:install_team {snake_name:"orange_ocelots", display_name:"Orange Ocelots", color:"gold"}
function rsot:install_team {snake_name:"yellow_yaks", display_name:"Yellow Yaks", color:"yellow"}
function rsot:install_team {snake_name:"lime_llamas", display_name:"Lime Llamas", color:"green"}
function rsot:install_team {snake_name:"green_geckos", display_name:"Green Geckos", color:"dark_green"}
function rsot:install_team {snake_name:"cyan_coyotes", display_name:"Cyan Coyotes", color:"dark_aqua"}
function rsot:install_team {snake_name:"aqua_axolotls", display_name:"Aqua Axolotls", color:"aqua"}
function rsot:install_team {snake_name:"blue_bats", display_name:"Blue Bats", color:"blue"}
function rsot:install_team {snake_name:"purple_pandas", display_name:"Purple Pandas", color:"dark_purple"}
function rsot:install_team {snake_name:"pink_parrots", display_name:"Pink Parrots", color:"light_purple"}

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
fill ^ ^-16 ^-34 ^ ^16 ^-34 minecraft:redstone_block replace minecraft:bedrock
fill ^ ^-16 ^-40 ^ ^16 ^-40 minecraft:redstone_block replace minecraft:bedrock

# Activate dance floor
fill ^2 ^-4 ^-41 ^2 ^16 ^-41 minecraft:redstone_block replace minecraft:bedrock
function rsot:jukebox/next

# Activate team tents:

# Lime tent
fill ^11 ^-16 ^14 ^7 ^16 ^14 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^4 ^ ^27 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:5, fence_type:"jungle_fence"}

# Orange tent
fill ^-9 ^-16 ^14 ^-13 ^16 ^14 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^-4 ^ ^27 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:1, fence_type:"dark_oak_fence"}

# Pink tent
fill ^24 ^-16 ^27 ^24 ^16 ^31 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^12 ^ ^27 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:6, fence_type:"jungle_fence"}

# Aqua tent
fill ^-24 ^-16 ^29 ^-24 ^16 ^33 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^-12 ^ ^26 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:3, fence_type:"jungle_fence"}

# Red tent
fill ^26 ^-16 ^40 ^26 ^16 ^44 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^11 ^-4 ^38 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:14, fence_type:"dark_oak_fence"}
execute positioned ^11 ^4 ^38 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:14, fence_type:"dark_oak_fence"}

# Green tent
fill ^-26 ^-16 ^42 ^-26 ^16 ^46 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^-16 ^-4 ^41 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..10] at @s run function rsot:data/sheep {color:13, fence_type:"jungle_fence"}
execute positioned ^-16 ^4 ^41 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..10] at @s run function rsot:data/sheep {color:13, fence_type:"jungle_fence"}

# Yellow tent
fill ^21 ^-16 ^53 ^21 ^16 ^57 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^7 ^-6 ^52 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:4, fence_type:"dark_oak_fence"}
execute positioned ^7 ^ ^52 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:4, fence_type:"dark_oak_fence"}
execute positioned ^7 ^6 ^52 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:4, fence_type:"dark_oak_fence"}

# Blue tent
fill ^-21 ^-16 ^55 ^-21 ^16 ^59 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^-8 ^-6 ^50 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:11, fence_type:"dark_oak_fence"}
execute positioned ^-8 ^ ^50 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:11, fence_type:"dark_oak_fence"}
execute positioned ^-8 ^6 ^50 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:11, fence_type:"dark_oak_fence"}

# Purple tent
fill ^16 ^-16 ^72 ^6 ^16 ^72 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^5 ^-6 ^61 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..10] at @s run function rsot:data/sheep {color:10, fence_type:"jungle_fence"}
execute positioned ^5 ^ ^61 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..10] at @s run function rsot:data/sheep {color:10, fence_type:"jungle_fence"}
execute positioned ^5 ^6 ^61 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..10] at @s run function rsot:data/sheep {color:10, fence_type:"jungle_fence"}

# Cyan tent
fill ^-4 ^-16 ^72 ^-8 ^16 ^72 minecraft:redstone_block replace minecraft:bedrock
execute positioned ^-9 ^-6 ^60 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:9, fence_type:"dark_oak_fence"}
execute positioned ^-9 ^ ^60 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:9, fence_type:"dark_oak_fence"}
execute positioned ^-9 ^6 ^60 as @e[type=minecraft:sheep,tag=rsot_sheep,distance=0..8] at @s run function rsot:data/sheep {color:9, fence_type:"dark_oak_fence"}

# Activate spynx gas:
fill ^20 ^-16 ^-15 ^20 ^16 ^-15 minecraft:redstone_block replace minecraft:bedrock
fill ^-20 ^-16 ^-15 ^-20 ^16 ^-15 minecraft:redstone_block replace minecraft:bedrock

# Init to open state
function rsot:game/open

kill @n[type=item,distance=..10]

# Apply effects
effect give @e[predicate=rsot:in_liminal_space] minecraft:resistance infinite 255 true

tellraw @p [{text:"Red Sands of Time has been installed!", color:"#b09870"}]
tellraw @p [{text:"The game state defaults to 'open' allowing players to ready up in their tents", color:"white"}]
tellraw @p [{text:"Use the admin book to control the game", color:"white"}]