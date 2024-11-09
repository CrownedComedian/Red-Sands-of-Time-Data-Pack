# This function is executed only once ever

playsound minecraft:ui.button.click master @a ^ ^9 ^
time set day

# Remove the sign
fill ^-5 ^4 ^-1 ^5 ^11 ^ minecraft:air replace
execute positioned ~ ~10 ~ run kill @n[type=minecraft:text_display,limit=2]
execute positioned ~ ~10 ~ run kill @n[type=minecraft:block_display]

# Init data
data modify storage rsot:game paused set value false
data modify storage rsot:generation selected_paths append value {id:"minecraft:green_concrete", path_type:"green_key"}
data modify storage rsot:generation selected_paths append value {id:"minecraft:red_concrete", path_type:"red_key"}
data modify storage rsot:generation selected_paths append value {id:"minecraft:yellow_concrete", path_type:"yellow_key"}
data modify storage rsot:generation selected_paths append value {id:"minecraft:blue_concrete", path_type:"lapis_key"}
data modify storage rsot:generation selected_paths append value {id:"minecraft:red_glazed_terracotta", path_type:"red_vault"}
data modify storage rsot:generation selected_paths append value {id:"minecraft:yellow_glazed_terracotta", path_type:"yellow_vault"}
data modify storage rsot:generation selected_paths append value {id:"minecraft:green_glazed_terracotta", path_type:"green_vault"}
data modify storage rsot:generation selected_paths append value {id:"minecraft:light_blue_glazed_terracotta", path_type:"lapis_vault"}
# TODO: finish lame vault
# data modify storage rsot:generation selected_paths append value {id:"minecraft:light_gray_terracotta", path_type:"lame_vault"}
data modify storage rsot:generation selected_paths append value {id:"minecraft:black_terracotta", path_type:"dead_end"}
data modify storage rsot:generation selected_paths append value {id:"minecraft:black_terracotta", path_type:"dead_end"}
data modify storage rsot:generation selected_paths append value {id:"minecraft:black_terracotta", path_type:"dead_end"}
data modify storage rsot:generation selected_paths append value {id:"minecraft:black_terracotta", path_type:"dead_end"}
function rsot:game/set_depths {red_key: 0, red_vault:2, yellow_key:2, yellow_vault:0, green_key:2, green_vault:3, lapis_key:4, lapis_vault:4, lame_vault:2, dead_end:1}

# Activate liminal space structures:

# Activate respawns
# (see rsot:install_escaped_respawn.mcfunction and rsot:install_caged_respawn.mcfunction)
fill ^ ^-10 ^-34 ^ ^10 ^-34 minecraft:redstone_block replace minecraft:bedrock
fill ^ ^-10 ^-40 ^ ^10 ^-40 minecraft:redstone_block replace minecraft:bedrock

# Activate team tents:

# Lime tent
fill ^11 ^-10 ^14 ^7 ^10 ^14 minecraft:redstone_block replace minecraft:bedrock

# Orange tent
fill ^-9 ^-10 ^14 ^-13 ^10 ^14 minecraft:redstone_block replace minecraft:bedrock

# Pink tent
fill ^24 ^-10 ^27 ^24 ^10 ^31 minecraft:redstone_block replace minecraft:bedrock

# Aqua tent
fill ^-24 ^-10 ^29 ^-24 ^10 ^33 minecraft:redstone_block replace minecraft:bedrock

# Red tent
fill ^26 ^-10 ^40 ^26 ^10 ^44 minecraft:redstone_block replace minecraft:bedrock

# Green tent
fill ^-26 ^-10 ^42 ^-26 ^10 ^46 minecraft:redstone_block replace minecraft:bedrock

# Yellow tent
fill ^21 ^-10 ^53 ^21 ^10 ^57 minecraft:redstone_block replace minecraft:bedrock

# Blue tent
fill ^-21 ^-10 ^55 ^-21 ^10 ^59 minecraft:redstone_block replace minecraft:bedrock

# Purple tent
fill ^10 ^-10 ^72 ^6 ^10 ^72 minecraft:redstone_block replace minecraft:bedrock

# Cyan tent
fill ^-4 ^-10 ^72 ^-8 ^10 ^72 minecraft:redstone_block replace minecraft:bedrock

# Init to open state
function rsot:game/open

kill @n[type=item,distance=..10]

tellraw @p "Red Sands of Time has been installed!"
tellraw @p "The game state defaults to 'open' allowing players to ready up in their tents"
tellraw @p [{"text":"To begin the game, run "},{"keybind":"[/function rsot:game/start]","color":"green","clickEvent":{"action":"suggest_command","value":"/function rsot:game/start"},"hoverEvent":{"action":"show_text","value":"Click to copy command"}}]
tellraw @p [{"text":"To start a new round at the end of the game, run "},{"keybind":"[/function rsot:game/open]","color":"green","clickEvent":{"action":"suggest_command","value":"/function rsot:game/open"},"hoverEvent":{"action":"show_text","value":"Click to copy command"}}]
