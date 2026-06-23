# Recursive function to add the next cell to the grid

# exit condition checks if we have already generated the last slot
execute if data storage rsot:grid content[{slot:121}] run return run function rsot:create_grid_end

# add current cell data to storage grid
execute unless predicate rsot:no_cell run data modify storage rsot:grid content append from storage rsot:grid pointer

# nuke old pointer data
data remove storage rsot:grid pointer

# update pointer scoreboard values to storage for the next cell
scoreboard players add #slot grid 1
scoreboard players add #n grid 1
scoreboard players add #s grid 1
scoreboard players add #e grid 1
scoreboard players add #w grid 1

function rsot:scoreboard/store_cell

function rsot:create_grid_cell