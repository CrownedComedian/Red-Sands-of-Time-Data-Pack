# Recursively appends a dead end path to the selected paths list until the list is full.  Usage: /function rsot:data/select_dead_end

# Break case
execute unless predicate rsot:can_fill_selected_paths run return 0

# Append a dead end path to the selected paths list
data modify storage rsot:selected_paths content append from storage rsot:all_paths content[{path_type:"dead_end"}]

# Increment the size of the selected paths list in storage for the next recursion
execute store result storage rsot:selected_paths size int 1 run data get storage rsot:selected_paths content

# Recurse
function rsot:data/select_dead_end