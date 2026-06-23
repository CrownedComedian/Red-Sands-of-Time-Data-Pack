# Shuffles a list of data in storage.  Usage: /function rsot:data/shuffle_list {data_path:"rsot:example_list"}

# Clear old data
data remove storage rsot:shuffled_list content
data remove storage rsot:shuffled_list content_copy

$data modify storage rsot:shuffled_list content_copy set from storage $(data_path) content

$execute store result score #shuffle_max_index size run data get storage $(data_path) content
scoreboard players remove #shuffle_max_index size 1

# No need to shuffle an empty list
execute if score #shuffle_max_index size matches -1 run return 0

function rsot:data/shuffle_list_item

# Replace original list with shuffled list
$data modify storage $(data_path) content set from storage rsot:shuffled_list content