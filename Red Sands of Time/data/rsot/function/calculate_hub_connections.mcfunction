# Append the starting path cells to the cell buffer to be worked on after grid creation and add ignore flags
# Ignore flags allows only the two visible paths from the hub spawn platform 
# to generate before the pre-game timer ends (see paths[4] and paths[8]).

# TODO - Path 0 (hub timer basement path)
data modify storage rsot:paths content append value {}

# Path 1
function rsot:data/init_path_cell {slot:40, index:1, in: {s:16}, generate_with_hub:false}

# Path 2
function rsot:data/init_path_cell {slot:52, index:2, in: {w:14}, generate_with_hub:false}

# Path 3
function rsot:data/init_path_cell {slot:63, index:3, in: {w:15}, generate_with_hub:false}

# Path 4 (visible from hub spawn platform so we generate it with the hub)
function rsot:data/init_path_cell {slot:74, index:4, in: {w:16}, generate_with_hub:true}

# Path 5
function rsot:data/init_path_cell {slot:84, index:5, in: {n:14}, generate_with_hub:false}

# Path 6
function rsot:data/init_path_cell {slot:83, index:6, in: {n:15}, generate_with_hub:false}

# Path 7
function rsot:data/init_path_cell {slot:82, index:7, in: {n:16}, generate_with_hub:false}

# Path 8 (visible from hub spawn platform so we generate it with the hub)
function rsot:data/init_path_cell {slot:70, index:8, in: {e:14}, generate_with_hub:true}

# Path 9
function rsot:data/init_path_cell {slot:59, index:9, in: {e:15}, generate_with_hub:false}

# Path 10
function rsot:data/init_path_cell {slot:48, index:10, in: {e:16}, generate_with_hub:false}

# Path 11
function rsot:data/init_path_cell {slot:38, index:11, in: {s:14}, generate_with_hub:false}

# Move on to next step
function rsot:tellraw/msg_admins {msg:'{text:"Calculated hub connections", color:"white", underlined:false}'}
data modify storage rsot:calculation_queue content append value {function:"rsot:calculate_tomb_maze", args:"{}"}