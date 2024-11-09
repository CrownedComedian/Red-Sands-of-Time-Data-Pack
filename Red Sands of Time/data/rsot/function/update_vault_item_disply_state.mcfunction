$execute positioned ~ ~2 ~ if block ~ ~ ~ minecraft:vault[vault_state=inactive] run return run data modify entity @n[type=minecraft:item_display] item.components."minecraft:custom_model_data" set value $(custom_mode_data_prefix)1

$execute positioned ~ ~2 ~ if block ~ ~ ~ minecraft:vault[vault_state=active] run return run data modify entity @n[type=minecraft:item_display] item.components."minecraft:custom_model_data" set value $(custom_mode_data_prefix)2

$execute positioned ~ ~2 ~ if block ~ ~ ~ minecraft:vault[vault_state=unlocking] run data modify entity @n[type=minecraft:item_display] item.components."minecraft:custom_model_data" set value $(custom_mode_data_prefix)3
$execute positioned ~ ~2 ~ if block ~ ~ ~ minecraft:vault[vault_state=unlocking] run setblock ^$(x) ^$(y) ^$(z) minecraft:redstone_block

$execute positioned ~ ~2 ~ if block ~ ~ ~ minecraft:vault[vault_state=ejecting] run setblock ^$(x) ^$(y) ^$(z) minecraft:redstone_block