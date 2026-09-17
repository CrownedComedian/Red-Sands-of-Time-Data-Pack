
# TODO - update when new path variants are added to the data pack

function rsot:tellraw/msg {msg:'{text:"Setting to alternative tomb generation preset", color:"white", underlined:false}'}

data modify storage rsot:generation preset set value "alternative"

data modify storage rsot:enabled_path_variants content set value ["pink", "yellow", "green", "lapis"]
data modify storage rsot:enabled_path_variants size set value 4

data modify storage rsot:pooled_path_variants content set value []
data modify storage rsot:pooled_path_variants size set value 0
data modify storage rsot:pooled_path_variants min set value 0

# Use hard-coded depths

function rsot:data/set_depth_for_path_type {path_type:"dead_end", depth:0}

function rsot:data/set_depth_for_path_type {path_type:"red_key", depth:0}
function rsot:data/set_depth_for_path_type {path_type:"red_vault", depth:3}

function rsot:data/set_depth_for_path_type {path_type:"yellow_key", depth:2}
function rsot:data/set_depth_for_path_type {path_type:"yellow_vault", depth:0}

function rsot:data/set_depth_for_path_type {path_type:"green_key", depth:0}
function rsot:data/set_depth_for_path_type {path_type:"green_vault", depth:5}

function rsot:data/set_depth_for_path_type {path_type:"lapis_key", depth:4}
function rsot:data/set_depth_for_path_type {path_type:"lapis_vault", depth:6}

function rsot:data/set_depth_for_path_type {path_type:"pink_key", depth:0}
function rsot:data/set_depth_for_path_type {path_type:"pink_vault", depth:3}

function rsot:data/set_depth_for_path_type {path_type:"cyan_key", depth:3}
function rsot:data/set_depth_for_path_type {path_type:"cyan_vault", depth:1}

function rsot:data/set_depth_for_path_type {path_type:"gray_key", depth:0}
function rsot:data/set_depth_for_path_type {path_type:"gray_vault", depth:5}

function rsot:data/set_depth_for_path_type {path_type:"purple_key", depth:5}
function rsot:data/set_depth_for_path_type {path_type:"purple_vault", depth:6}

# Use hard-coded algorithms

function rsot:data/set_algorithm_for_path_type {path_type:"dead_end", algorithm:"terminal"}

function rsot:data/set_algorithm_for_path_type {path_type:"red_key", algorithm:"terminal"}
function rsot:data/set_algorithm_for_path_type {path_type:"red_vault", algorithm:"bushy"}

function rsot:data/set_algorithm_for_path_type {path_type:"yellow_key", algorithm:"bifurcated"}
function rsot:data/set_algorithm_for_path_type {path_type:"yellow_vault", algorithm:"terminal"}

function rsot:data/set_algorithm_for_path_type {path_type:"green_key", algorithm:"terminal"}
function rsot:data/set_algorithm_for_path_type {path_type:"green_vault", algorithm:"bifurcated"}

function rsot:data/set_algorithm_for_path_type {path_type:"lapis_key", algorithm:"bifurcated"}
function rsot:data/set_algorithm_for_path_type {path_type:"lapis_vault", algorithm:"bushy"}

function rsot:data/set_algorithm_for_path_type {path_type:"pink_key", algorithm:"terminal"}
function rsot:data/set_algorithm_for_path_type {path_type:"pink_vault", algorithm:"terminal"}

function rsot:data/set_algorithm_for_path_type {path_type:"cyan_key", algorithm:"bushy"}
function rsot:data/set_algorithm_for_path_type {path_type:"cyan_vault", algorithm:"bifurcated"}

function rsot:data/set_algorithm_for_path_type {path_type:"gray_key", algorithm:"terminal"}
function rsot:data/set_algorithm_for_path_type {path_type:"gray_vault", algorithm:"bushy"}

function rsot:data/set_algorithm_for_path_type {path_type:"purple_key", algorithm:"warped"}
function rsot:data/set_algorithm_for_path_type {path_type:"purple_vault", algorithm:"warped"}