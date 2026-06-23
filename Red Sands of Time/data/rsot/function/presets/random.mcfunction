# Put all path variants into the randomly pooled paths list
function rsot:tellraw/msg {msg:'{text:"Setting to random tomb generation preset", color:"white", underlined:false}'}

data modify storage rsot:generation preset set value "random"

data modify storage rsot:enabled_path_variants content set value []
data modify storage rsot:enabled_path_variants size set value 0

data modify storage rsot:pooled_path_variants content set value ["red", "yellow", "green", "lapis", "pink"]
data modify storage rsot:pooled_path_variants size set value 5
data modify storage rsot:pooled_path_variants min set value 3

function rsot:data/set_random_depth {destination:"red_key", min:0, max:5}
function rsot:data/set_random_depth {destination:"red_vault", min:1, max:5}

function rsot:data/set_random_depth {destination:"yellow_key", min:1, max:5}
function rsot:data/set_random_depth {destination:"yellow_vault", min:0, max:5}

function rsot:data/set_random_depth {destination:"green_key", min:1, max:5}
function rsot:data/set_random_depth {destination:"green_vault", min:0, max:5}

function rsot:data/set_random_depth {destination:"lapis_key", min:0, max:5}
function rsot:data/set_random_depth {destination:"lapis_vault", min:3, max:6}

function rsot:data/set_random_depth {destination:"pink_key", min:0, max:5}
function rsot:data/set_random_depth {destination:"pink_vault", min:1, max:5}

function rsot:data/set_depth_for_destination {destination:"dead_end", depth:0}