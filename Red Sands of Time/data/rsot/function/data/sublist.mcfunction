# Creates a sublist from '$(data_path) content' and saves it to 'rsot:sublist content'.
# Make sure #sublist size score is set first
# Usage: 
# /scoreboard players set #sublist size 3
# /function rsot:data/sublist {data_path:"rsot:list"}

# Nuke any old data
data remove storage rsot:sublist content
data remove storage rsot:sublist content_copy

# Create a copy of the list
$data modify storage rsot:sublist content_copy set from storage $(data_path) content

execute if score #sublist size matches ..0 run return run data modify storage rsot:sublist content set value []

scoreboard players operation #sublist_index size = #sublist size

function rsot:data/sublist_item