# Copy paths
data modify storage rsot:generation selected_paths_copy set from storage rsot:generation selected_paths
data remove storage rsot:generation paths

function rsot:data/shuffle_path_type {index:0}

execute store result storage rsot:generation next_random.index int 1 run random value 0..10
function rsot:data/shuffle_path_type with storage rsot:generation next_random

execute store result storage rsot:generation next_random.index int 1 run random value 0..9
function rsot:data/shuffle_path_type with storage rsot:generation next_random

execute store result storage rsot:generation next_random.index int 1 run random value 0..8
function rsot:data/shuffle_path_type with storage rsot:generation next_random

execute store result storage rsot:generation next_random.index int 1 run random value 0..7
function rsot:data/shuffle_path_type with storage rsot:generation next_random

execute store result storage rsot:generation next_random.index int 1 run random value 0..6
function rsot:data/shuffle_path_type with storage rsot:generation next_random

execute store result storage rsot:generation next_random.index int 1 run random value 0..5
function rsot:data/shuffle_path_type with storage rsot:generation next_random

execute store result storage rsot:generation next_random.index int 1 run random value 0..4
function rsot:data/shuffle_path_type with storage rsot:generation next_random

execute store result storage rsot:generation next_random.index int 1 run random value 0..3
function rsot:data/shuffle_path_type with storage rsot:generation next_random

execute store result storage rsot:generation next_random.index int 1 run random value 0..2
function rsot:data/shuffle_path_type with storage rsot:generation next_random

execute store result storage rsot:generation next_random.index int 1 run random value 0..1
function rsot:data/shuffle_path_type with storage rsot:generation next_random

function rsot:data/shuffle_path_type {index:0}

# Add path portals
data modify storage rsot:generation paths[1].portal set value "lower_left"
data modify storage rsot:generation paths[2].portal set value "upper_left"
data modify storage rsot:generation paths[3].portal set value "lower_middle"
data modify storage rsot:generation paths[4].portal set value "upper_right"
data modify storage rsot:generation paths[5].portal set value "lower_left"
data modify storage rsot:generation paths[6].portal set value "lower_center"
data modify storage rsot:generation paths[7].portal set value "lower_right"
data modify storage rsot:generation paths[8].portal set value "upper_left"
data modify storage rsot:generation paths[9].portal set value "lower_middle"
data modify storage rsot:generation paths[10].portal set value "upper_right"
data modify storage rsot:generation paths[11].portal set value "lower_left"

# Add path headings
data modify storage rsot:generation paths[1].heading set value "starboard"
data modify storage rsot:generation paths[2].heading set value "port"
data modify storage rsot:generation paths[3].heading set value "forward"
data modify storage rsot:generation paths[4].heading set value "starboard"
data modify storage rsot:generation paths[5].heading set value "port"
data modify storage rsot:generation paths[6].heading set value "forward"
data modify storage rsot:generation paths[7].heading set value "starboard"
data modify storage rsot:generation paths[8].heading set value "port"
data modify storage rsot:generation paths[9].heading set value "forward"
data modify storage rsot:generation paths[10].heading set value "starboard"
data modify storage rsot:generation paths[11].heading set value "port"