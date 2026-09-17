# feeds each entry object of a data list into a function.  Usage: function rsot:data/iterrate_array_with_function {data_path:"rsot:list", function:"rsot:function"}

# Copy data
$data modify storage rsot:iterration content set from storage $(data_path) content
$data modify storage rsot:iterration function set value "$(function)"

execute if data storage rsot:iterration content[0] run function rsot:data/iterrate_array_with_function_item with storage rsot:iterration

# Nuke data
data remove storage rsot:iterration function