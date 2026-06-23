# Picks a random depth value for a given destination and updates storage with the new value

# copy input destination to function buffer storage
$data modify storage rsot:set_random_depth destination set value "$(destination)"

# Roll random depth value
$function rsot:random_value {min:$(min), max:$(max)}

# copy results to function buffer storage
data modify storage rsot:set_random_depth depth set from storage rsot:random value

# Update the random depth value for the destination to storage
function rsot:data/set_depth_for_destination with storage rsot:set_random_depth