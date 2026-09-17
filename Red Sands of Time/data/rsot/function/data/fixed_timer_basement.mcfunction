# Move the path_type path input to the start of the list to ensure it is used for the timer basement path

# Remove the first occurrence of the path_type path from the selected paths list, if it exists
$data remove storage rsot:selected_paths content[{path_type:"$(path_type)"}]

$data modify storage rsot:selected_paths content prepend from storage rsot:all_paths content[{path_type:"$(path_type)"}]