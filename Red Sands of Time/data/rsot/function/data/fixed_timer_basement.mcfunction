# Move the destination path input to the start of the list to ensure it is used for the timer basement path

# Remove the first occurrence of the destination path from the selected paths list, if it exists
$data remove storage rsot:selected_paths content[{destination:"$(destination)"}]

$data modify storage rsot:selected_paths content prepend from storage rsot:all_paths content[{destination:"$(destination)"}]