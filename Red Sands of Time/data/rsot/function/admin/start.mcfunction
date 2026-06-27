# Prepares a new game
data modify storage rsot:game state set value "preparing"
data modify storage rsot:generation selected_paths set value false

function rsot:tellraw/msg {msg:"Preparing game..."}

# Pick a new location for the tomb to generate at
execute store result storage rsot:generation location.x int 1.0 run random value -29000000..29000000
execute store result storage rsot:generation location.z int 1.0 run random value -29000000..29000000

# Set random depths if in random preset
execute if data storage rsot:generation {preset:"random"} run function rsot:data/set_random_depths

# Set random algorithms if in random preset
execute if data storage rsot:generation {preset:"random"} run function rsot:data/set_random_algorithms

# Append initial work to the calculation queue
function rsot:data/append_calculate_selected_paths

# Start calculation queue
function rsot:calculate_step