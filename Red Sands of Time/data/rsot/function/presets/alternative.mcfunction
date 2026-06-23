function rsot:tellraw/msg {msg:'{text:"Setting to alternative tomb generation preset", color:"white", underlined:false}'}

data modify storage rsot:generation preset set value "alternative"

data modify storage rsot:enabled_path_variants content set value ["pink", "yellow", "green", "lapis"]
data modify storage rsot:enabled_path_variants size set value 4

data modify storage rsot:pooled_path_variants content set value []
data modify storage rsot:pooled_path_variants size set value 0
data modify storage rsot:pooled_path_variants min set value 0

function rsot:data/set_depth_for_destination {destination:"red_key", depth:0}
function rsot:data/set_depth_for_destination {destination:"red_vault", depth:3}

function rsot:data/set_depth_for_destination {destination:"yellow_key", depth:2}
function rsot:data/set_depth_for_destination {destination:"yellow_vault", depth:0}

function rsot:data/set_depth_for_destination {destination:"green_key", depth:0}
function rsot:data/set_depth_for_destination {destination:"green_vault", depth:5}

function rsot:data/set_depth_for_destination {destination:"lapis_key", depth:4}
function rsot:data/set_depth_for_destination {destination:"lapis_vault", depth:6}

function rsot:data/set_depth_for_destination {destination:"dead_end", depth:0}