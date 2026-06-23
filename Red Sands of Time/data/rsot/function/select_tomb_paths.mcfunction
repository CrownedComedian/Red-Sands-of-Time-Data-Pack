
# failsafe
execute if data storage rsot:generation {selected_paths:false} run schedule function rsot:select_tomb_paths 2t

# break case (move on to the next step)
execute if data storage rsot:generation {selected_paths:true} run function rsot:tellraw/msg_admins {msg:'{text:"Calculated selected paths", color:"white", underlined:false}'}
execute if data storage rsot:generation {selected_paths:true} run return run function rsot:create_grid

# execution
function rsot:data/select_tomb_paths