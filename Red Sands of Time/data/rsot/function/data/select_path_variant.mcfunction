# Adds the input path variants to the selected paths list.  Usage: /function rsot:data/select_path_variants {data_path:"rsot:enabled_path_variants", path_variant:"red"}
$execute if data storage $(data_path) {content:["$(path_variant)"]} run data modify storage rsot:selected_paths content append from storage rsot:all_paths content[{path_type:"$(path_variant)_key"}]
$execute if data storage $(data_path) {content:["$(path_variant)"]} run data modify storage rsot:selected_paths content append from storage rsot:all_paths content[{path_type:"$(path_variant)_vault"}]
