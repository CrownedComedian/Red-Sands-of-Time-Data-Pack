# Usage: /function rsot:init_path_cell <slot> <index> <generate_with_hub>

# Set independent data
$data modify storage rsot:grid content[{slot:$(slot)}].path_type set from storage rsot:selected_paths content[$(index)].path_type
$data modify storage rsot:grid content[{slot:$(slot)}].depth set value 0
$data modify storage rsot:grid content[{slot:$(slot)}].in set value $(in)
$data modify storage rsot:grid content[{slot:$(slot)}].jigsaw_name set value "rsot:portrait_path_in"

# Add dependent data
$function rsot:data/init_path_algorithm with storage rsot:grid content[{slot:$(slot)}]

# Set path data
data modify storage rsot:paths content append value {}
$data modify storage rsot:paths content[$(index)].generate_with_hub set value $(generate_with_hub)

# Add to algorithm buffer for calculation
$function rsot:data/categorize_by_algorithm with storage rsot:grid content[{slot:$(slot)}]
