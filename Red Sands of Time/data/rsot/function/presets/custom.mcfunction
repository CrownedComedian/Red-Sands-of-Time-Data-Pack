function rsot:tellraw/msg {msg:'{text:"Setting to custom tomb generation preset", color:"white", underlined:false}'}

$data modify storage rsot:presets custom.red_paths set value $(red_paths)
$data modify storage rsot:presets custom.yellow_paths set value $(yellow_paths)
$data modify storage rsot:presets custom.green_paths set value $(green_paths)
$data modify storage rsot:presets custom.lapis_paths set value $(lapis_paths)
$data modify storage rsot:presets custom.pink_paths set value $(pink_paths)

data modify storage rsot:generation preset set value "custom"

# Enabled path variants

data remove storage rsot:enabled_path_variants content
data remove storage rsot:enabled_path_variants size

execute if data storage rsot:presets {custom:{red_paths:"enabled"}} run data modify storage rsot:enabled_path_variants content append value "red"
execute if data storage rsot:presets {custom:{yellow_paths:"enabled"}} run data modify storage rsot:enabled_path_variants content append value "yellow"
execute if data storage rsot:presets {custom:{green_paths:"enabled"}} run data modify storage rsot:enabled_path_variants content append value "green"
execute if data storage rsot:presets {custom:{lapis_paths:"enabled"}} run data modify storage rsot:enabled_path_variants content append value "lapis"
execute if data storage rsot:presets {custom:{pink_paths:"enabled"}} run data modify storage rsot:enabled_path_variants content append value "pink"

execute store result storage rsot:enabled_path_variants size int 1 run data get storage rsot:enabled_path_variants content

# Pooled path variants

data remove storage rsot:pooled_path_variants content
data remove storage rsot:pooled_path_variants size

execute if data storage rsot:presets {custom:{red_paths:"pooled"}} run data modify storage rsot:pooled_path_variants content append value "red"
execute if data storage rsot:presets {custom:{yellow_paths:"pooled"}} run data modify storage rsot:pooled_path_variants content append value "yellow"
execute if data storage rsot:presets {custom:{green_paths:"pooled"}} run data modify storage rsot:pooled_path_variants content append value "green"
execute if data storage rsot:presets {custom:{lapis_paths:"pooled"}} run data modify storage rsot:pooled_path_variants content append value "lapis"
execute if data storage rsot:presets {custom:{pink_paths:"pooled"}} run data modify storage rsot:pooled_path_variants content append value "pink"

execute store result storage rsot:pooled_path_variants size int 1 run data get storage rsot:pooled_path_variants content
data modify storage rsot:pooled_path_variants min set value 0

# Set depths

$function rsot:data/set_depth_for_destination {destination:"red_key", depth:$(red_key_depth)}
$function rsot:data/set_depth_for_destination {destination:"red_vault", depth:$(red_vault_depth)}

$function rsot:data/set_depth_for_destination {destination:"yellow_key", depth:$(yellow_key_depth)}
$function rsot:data/set_depth_for_destination {destination:"yellow_vault", depth:$(yellow_vault_depth)}

$function rsot:data/set_depth_for_destination {destination:"green_key", depth:$(green_key_depth)}
$function rsot:data/set_depth_for_destination {destination:"green_vault", depth:$(green_vault_depth)}

$function rsot:data/set_depth_for_destination {destination:"lapis_key", depth:$(lapis_key_depth)}
$function rsot:data/set_depth_for_destination {destination:"lapis_vault", depth:$(lapis_vault_depth)}

function rsot:data/set_depth_for_destination {destination:"dead_end", depth:0}