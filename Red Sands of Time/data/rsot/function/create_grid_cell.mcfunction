# Recursive function to add the next cell to the grid

# Exit condition checks if we have already generated the last slot
execute if data storage rsot:grid content[{slot:121}] run return run function rsot:create_grid_end

# Add cell shape data to the current cell in storage
execute if predicate rsot:is_cell_square run data modify storage rsot:grid pointer.shape set value "7x7"
execute if predicate rsot:is_cell_rectangular run data modify storage rsot:grid pointer.shape set value "5x7"

# Add current cell data to storage grid
execute unless predicate rsot:no_cell run data modify storage rsot:grid content append from storage rsot:grid pointer

# Nuke old pointer data
data remove storage rsot:grid pointer

# Update pointer scoreboard values to storage for the next cell
scoreboard players add #slot grid 1
scoreboard players add #n grid 1
scoreboard players add #s grid 1
scoreboard players add #e grid 1
scoreboard players add #w grid 1

function rsot:scoreboard/store_cell

function rsot:create_grid_cell