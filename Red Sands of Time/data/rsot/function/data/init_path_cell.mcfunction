# Usage: /function rsot:init_path_cell <slot> <index> <generate_with_hub>
$data modify storage rsot:grid content[{slot:$(slot)}].path_type set from storage rsot:selected_paths content[$(index)].destination
$data modify storage rsot:grid content[{slot:$(slot)}].depth set value 0
$data modify storage rsot:grid content[{slot:$(slot)}].in set value $(in)
$data modify storage rsot:grid content[{slot:$(slot)}].jigsaw_name set value "rsot:portrait_path_in"
$function rsot:data/init_path_algorithm with storage rsot:grid content[{slot:$(slot)}]
$data modify storage rsot:grid content[{slot:$(slot)}].algorithm set from storage rsot:target_algorithms content[$(index)].algorithm
$data modify storage rsot:paths content[$(index)].generate_with_hub set value $(generate_with_hub)

# Add to buffer for calculation
$data modify storage rsot:cells_buffer content append from storage rsot:grid content[{slot:$(slot)}]

# Append empty path data for later
data modify storage rsot:paths content append value {}