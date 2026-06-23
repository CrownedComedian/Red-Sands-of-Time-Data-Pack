scoreboard players remove #sublist_index size 1

# break case for if we are done copying elements over
execute if score #sublist_index size matches -1 run return 0

# Copy index to storage for the helper function to use
execute store result storage rsot:sublist index int 1 run scoreboard players get #sublist_index size

function rsot:data/sublist_helper with storage rsot:sublist

function rsot:data/sublist_item
