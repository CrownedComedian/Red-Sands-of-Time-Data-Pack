# Updates the saved depth value for a path_type to storage
$data modify storage rsot:target_depths content merge value {$(path_type):$(depth)}
$execute store result score #$(path_type) size run data get storage rsot:target_depths content.$(path_type)