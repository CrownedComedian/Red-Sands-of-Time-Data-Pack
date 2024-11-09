# Helper funtion for rsot:shuffle_paths.mcfunction
$data modify storage rsot:generation paths append from storage rsot:generation selected_paths_copy[$(index)]
$data remove storage rsot:generation selected_paths_copy[$(index)]