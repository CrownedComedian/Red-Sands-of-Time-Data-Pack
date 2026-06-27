
# cleanup
scoreboard objectives remove grid
data remove storage rsot:grid pointer
data remove storage rsot:paths content
data remove storage rsot:cells_buffer content

# Move on to the next step
function rsot:tellraw/msg_admins {msg:'{text:"Created grid", color:"white", underlined:false}'}
data modify storage rsot:calculation_queue content append value {function:"rsot:calculate_hub_connections", args:"{}"}