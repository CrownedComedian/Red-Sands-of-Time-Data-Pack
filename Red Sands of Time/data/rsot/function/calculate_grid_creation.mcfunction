# Creates the grid storage with data for each cell
# Designed to be run on the calculation queue.

data remove storage rsot:grid content

# Scoreboard values used for generating the grid
scoreboard objectives add grid dummy
scoreboard players set #slot grid 1
scoreboard players set #n grid -10
scoreboard players set #s grid 12
scoreboard players set #e grid 2
scoreboard players set #w grid 0

# Copy scoreboard values to storage for the first cell
function rsot:scoreboard/store_cell
data modify storage rsot:grid pointer.state set value "empty"

# Fill data
function rsot:create_grid_cell