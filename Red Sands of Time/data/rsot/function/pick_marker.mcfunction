# pick_marker.mcfunction
# Designed to be executed at each path block location on the mini map above the timer

# Summon the path marker
summon marker ~ ~ ~

$function rsot:data/set_path_marker_clockwise_data with storage rsot:generation paths[$(clockwise_index)]
$function rsot:data/set_path_marker_counter_clockwise_data with storage rsot:generation paths[$(counter_clockwise_index)]
$function rsot:data/set_path_marker_data with storage rsot:generation paths[$(this_index)]