$execute positioned ~ ~2 ~ if block ~ ~ ~ minecraft:vault[vault_state=inactive] run return run data modify entity @n[type=minecraft:item_display] item.components."minecraft:item_model" set value "rsot:$(item_model)"

$execute positioned ~ ~2 ~ if block ~ ~ ~ minecraft:vault[vault_state=active] run return run data modify entity @n[type=minecraft:item_display] item.components."minecraft:item_model" set value "rsot:$(item_model)_active"

$execute positioned ~ ~2 ~ if block ~ ~ ~ minecraft:vault[vault_state=unlocking] run data modify entity @n[type=minecraft:item_display] item.components."minecraft:item_model" set value "rsot:$(item_model)_unlocking"
$execute positioned ~ ~2 ~ if block ~ ~ ~ minecraft:vault[vault_state=unlocking] run setblock ^$(x) ^$(y) ^$(z) minecraft:redstone_block

$execute positioned ~ ~2 ~ if block ~ ~ ~ minecraft:vault[vault_state=ejecting] run setblock ^$(x) ^$(y) ^$(z) minecraft:redstone_block