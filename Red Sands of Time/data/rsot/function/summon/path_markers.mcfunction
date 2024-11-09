# Personal helper function during the creation of rsot, not actually run during the game.
# Deck of potential path outlets summoned at the top of the timer
# 11 total paths ( default: 4 treasure vaults, 3 treasure keys, 3 lame vaults, and 1 dead end)

# Red vault and key
summon marker ~ ~ ~ {data:{id:"minecraft:red_glazed_terracotta", path_type:"red_vault"}, Tags:["unused"]}
summon marker ~ ~ ~ {data:{id:"minecraft:red_concrete", path_type:"red_key"}, Tags:["unused"]}

# Yellow vault and key
summon marker ~ ~ ~ {data:{id:"minecraft:yellow_glazed_terracotta", path_type:"yellow_vault"}, Tags:["unused"]}
summon marker ~ ~ ~ {data:{id:"minecraft:yellow_concrete", path_type:"yellow_key"}, Tags:["unused"]}

# Green vault and key
summon marker ~ ~ ~ {data:{id:"minecraft:green_glazed_terracotta", path_type:"green_vault"}, Tags:["unused"]}
# summon marker ~ ~ ~ {data:{id:"minecraft:green_concrete", path_type:"green_key"}, Tags:["unused"]}

# Blue vault and key
summon marker ~ ~ ~ {data:{id:"minecraft:light_blue_glazed_terracotta", path_type:"lapis_vault"}, Tags:["unused"]}
summon marker ~ ~ ~ {data:{id:"minecraft:blue_concrete", path_type:"lapis_key"}, Tags:["unused"]}

# lame paths
summon marker ~ ~ ~ {data:{id:"minecraft:light_gray_terracotta", path_type:"lame_vault"}, Tags:["unused"]}
summon marker ~ ~ ~ {data:{id:"minecraft:light_gray_terracotta", path_type:"lame_vault"}, Tags:["unused"]}
summon marker ~ ~ ~ {data:{id:"minecraft:light_gray_terracotta", path_type:"lame_vault"}, Tags:["unused"]}

# dead end path
summon marker ~ ~ ~ {data:{id:"minecraft:black_terracotta", path_type:"dead_end"}, Tags:["unused"]}

# Pink vault and key
# summon marker ~ ~ ~ {data:{id:"minecraft:pink_glazed_terracotta", path_type:"pink_vault"}, Tags:["unused"]}
# summon marker ~ ~ ~ {data:{id:"minecraft:pink_concrete", path_type:"pink_key"}, Tags:["unused"]}

# Gray vault and key
# summon marker ~ ~ ~ {data:{id:"minecraft:gray_glazed_terracotta", path_type:"gray_vault"}, Tags:["unused"]}
# summon marker ~ ~ ~ {data:{id:"minecraft:gray_concrete", path_type:"gray_key"}, Tags:["unused"]}

# summon path outlets for mini map
# summon marker ~4 ~ ~ {Tags:["lower_middle"]}
# summon marker ~4 ~ ~3 {Tags:["upper_right"]}
# summon marker ~2 ~ ~4 {Tags:["lower_left"]}
# summon marker ~-2 ~ ~4 {Tags:["lower_right"]}
# summon marker ~-4 ~ ~3 {Tags:["upper_left"]}
# summon marker ~-4 ~ ~ {Tags:["lower_middle"]}
# summon marker ~-4 ~ ~-3 {Tags:["upper_right"]}
# summon marker ~-2 ~ ~-4 {Tags:["lower_left"]}
# summon marker ~ ~ ~-4 {Tags:["lower_center"]}
# summon marker ~2 ~ ~-4 {Tags:["lower_right"]}
# summon marker ~4 ~ ~-3 {Tags:["upper_left"]}