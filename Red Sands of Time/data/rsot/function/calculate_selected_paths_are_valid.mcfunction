# Calculates if the selected paths are valid for tomb generation

# If the first path is a timer basement path, mark in data
execute if function rsot:data/is_valid_timer_basement run data modify storage rsot:generation selected_paths set value true

# If we do not have a valid paths sequence, re-run the selected paths calculation and validation
execute if data storage rsot:generation {selected_paths:false} run return run function rsot:data/append_calculate_selected_paths

# Else (we have a valid paths sequence), move on to the next step (grid creation)
function rsot:tellraw/msg_admins {msg:'{text:"Calculated selected paths", color:"white", underlined:false}'}
data modify storage rsot:calculation_queue content append value {function:"rsot:calculate_grid_creation", args:"{}"}
