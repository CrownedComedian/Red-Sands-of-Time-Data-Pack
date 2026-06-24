# Calculates the sequence of paths that will be used in the tomb maze for this game, and stores that data in storage rsot:selected_paths.
# Designed to be run in the calculation queue.

# Nuke any old data
data modify storage rsot:selected_paths content set value []
data modify storage rsot:selected_paths size set value 0

# Fill the selected_paths list from the enabled_path_variants list
function rsot:data/select_path_variant {data_path:"rsot:enabled_path_variants", path_variant:"red"}
function rsot:data/select_path_variant {data_path:"rsot:enabled_path_variants", path_variant:"yellow"}
function rsot:data/select_path_variant {data_path:"rsot:enabled_path_variants", path_variant:"green"}
function rsot:data/select_path_variant {data_path:"rsot:enabled_path_variants", path_variant:"lapis"}
function rsot:data/select_path_variant {data_path:"rsot:enabled_path_variants", path_variant:"pink"}
function rsot:data/select_path_variant {data_path:"rsot:enabled_path_variants", path_variant:"cyan"}
function rsot:data/select_path_variant {data_path:"rsot:enabled_path_variants", path_variant:"gray"}
function rsot:data/select_path_variant {data_path:"rsot:enabled_path_variants", path_variant:"purple"}

execute store result storage rsot:selected_paths size int 1 run data get storage rsot:selected_paths content

# Calculate how many randomly pooled paths we can add to the selected paths list
# This value will be a number in the range of zero and the minimum between the pool size and the available space.  aka: 0..min(#pooled_path_variants, #max_path_variants - #enabled_path_variants)
execute store result score #enabled_path_variants size run data get storage rsot:enabled_path_variants size
execute store result score #pooled_path_variants size run data get storage rsot:pooled_path_variants size

scoreboard players operation #remaining_path_variants size = #max_path_variants size
scoreboard players operation #remaining_path_variants size -= #enabled_path_variants size

# Use the #pooled_path_variants size score if it is less than #remaining_path_variants size, otherwise use #remaining_path_variants size
execute if score #pooled_path_variants size < #remaining_path_variants size run scoreboard players operation #max_pooled_path_variants size = #pooled_path_variants size
execute if score #pooled_path_variants size >= #remaining_path_variants size run scoreboard players operation #max_pooled_path_variants size = #remaining_path_variants size

execute store result storage rsot:pooled_path_variants max int 1 run scoreboard players get #max_pooled_path_variants size

# Pick a random number of iterations between zero and the max number of pooled path variants that can be added to the selected paths list.  Set to 0 if empty
execute if score #max_pooled_path_variants size matches 1.. run function rsot:random_value with storage rsot:pooled_path_variants
execute if score #max_pooled_path_variants size matches 0 run data modify storage rsot:random value set value 0
execute store result score #sublist size run data get storage rsot:random value

# Create a sublist with a size of the random number we just picked, to the pooled path variants
function rsot:data/sublist {data_path:"rsot:pooled_path_variants"}

# Shuffle the pooled sublist
function rsot:data/shuffle_list {data_path:"rsot:sublist"}

# Append every path variant in the pooled path variants sublist to the selected paths list
function rsot:data/select_path_variant {data_path:"rsot:sublist", path_variant:"red"}
function rsot:data/select_path_variant {data_path:"rsot:sublist", path_variant:"yellow"}
function rsot:data/select_path_variant {data_path:"rsot:sublist", path_variant:"green"}
function rsot:data/select_path_variant {data_path:"rsot:sublist", path_variant:"lapis"}
function rsot:data/select_path_variant {data_path:"rsot:sublist", path_variant:"pink"}
function rsot:data/select_path_variant {data_path:"rsot:sublist", path_variant:"cyan"}
function rsot:data/select_path_variant {data_path:"rsot:sublist", path_variant:"gray"}
function rsot:data/select_path_variant {data_path:"rsot:sublist", path_variant:"purple"}

# Fill remaining paths with dead ends
function rsot:data/select_dead_end

# Shuffle selected paths
function rsot:data/shuffle_list {data_path:"rsot:selected_paths"}

# Ensure selected_path[0] is a timer basement path

# Force green_key for standard preset
execute if data storage rsot:generation {preset:"standard"} run function rsot:data/fixed_timer_basement {destination:"green_key"}

# Force pink_key for alternative preset
execute if data storage rsot:generation {preset:"alternative"} run function rsot:data/fixed_timer_basement {destination:"pink_key"}

# Add basement tag for validation check
data modify storage rsot:selected_paths content[0].basement set value true 