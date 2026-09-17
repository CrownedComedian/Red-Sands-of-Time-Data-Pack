# Picks a random depth value for a given path_type and updates storage with the new value

# copy input path_type to function buffer storage
$data modify storage rsot:set_random_depth path_type set value "$(path_type)"

# Roll random depth value
$function rsot:random_value {min:$(min), max:$(max)}

# copy results to function buffer storage
data modify storage rsot:set_random_depth depth set from storage rsot:random value

# Update the random depth value for the path_type to storage
function rsot:data/set_depth_for_path_type with storage rsot:set_random_depth