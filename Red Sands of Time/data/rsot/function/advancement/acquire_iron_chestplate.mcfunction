advancement grant @s only rsot:custom/acquire_chainmail_chestplate

# remove the iron chestplate they just picked up
clear @s minecraft:iron_chestplate 1

# put it on
item replace entity @s armor.chest with minecraft:iron_chestplate[minecraft:unbreakable={},minecraft:tooltip_display={hidden_components:["minecraft:unbreakable"]}]