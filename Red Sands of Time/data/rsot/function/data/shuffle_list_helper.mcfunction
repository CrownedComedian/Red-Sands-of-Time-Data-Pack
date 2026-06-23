# Usage: /function rsot:data/shuffle_list_helper with storage rsot:random

# Append to the randomized list
$data modify storage rsot:shuffled_list content append from storage rsot:shuffled_list content_copy[$(value)]

# Decrement
scoreboard players remove #shuffle_max_index size 1
$data remove storage rsot:shuffled_list content_copy[$(value)]
