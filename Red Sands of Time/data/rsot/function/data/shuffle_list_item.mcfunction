# pick a random index, or 0 if the size of the remaining copied list is 1
execute if score #shuffle_max_index size matches 0 run return run data modify storage rsot:shuffled_list content append from storage rsot:shuffled_list content_copy[0]
execute store result storage rsot:shuffled_list max int 1 run scoreboard players get #shuffle_max_index size

# Pick a random value
function rsot:random_value with storage rsot:shuffled_list

# Move the picked value to the shuffled list
function rsot:data/shuffle_list_helper with storage rsot:random

# Recurse
function rsot:data/shuffle_list_item
