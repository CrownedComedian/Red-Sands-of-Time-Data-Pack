
# cleanup
scoreboard objectives remove grid
data remove storage rsot:grid pointer
data remove storage rsot:paths content

# set state for cells connected directly to the tomb
data modify storage rsot:grid content[{id:40}].state set value "full"
data modify storage rsot:grid content[{id:52}].state set value "full"
data modify storage rsot:grid content[{id:63}].state set value "full"
data modify storage rsot:grid content[{id:74}].state set value "full"
data modify storage rsot:grid content[{id:84}].state set value "full"
data modify storage rsot:grid content[{id:83}].state set value "full"
data modify storage rsot:grid content[{id:82}].state set value "full"
data modify storage rsot:grid content[{id:70}].state set value "full"
data modify storage rsot:grid content[{id:59}].state set value "full"
data modify storage rsot:grid content[{id:48}].state set value "full"
data modify storage rsot:grid content[{id:38}].state set value "full"

# setup path data
data modify storage rsot:paths content append value {}
data modify storage rsot:paths content append value {}
data modify storage rsot:paths content append value {}
data modify storage rsot:paths content append value {}
data modify storage rsot:paths content append value {}
data modify storage rsot:paths content append value {}
data modify storage rsot:paths content append value {}
data modify storage rsot:paths content append value {}
data modify storage rsot:paths content append value {}
data modify storage rsot:paths content append value {}
data modify storage rsot:paths content append value {}
data modify storage rsot:paths content append value {}

# Move on to the next step
function rsot:tellraw/msg_admins {msg:'{text:"Created grid", color:"white", underlined:false}'}
data modify storage rsot:calculation_queue content append value {function:"rsot:calculate_tomb_maze", args:"{}"}