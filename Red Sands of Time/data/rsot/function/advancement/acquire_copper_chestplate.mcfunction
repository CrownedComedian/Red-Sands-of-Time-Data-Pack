# remove the copper chestplate they just picked up
clear @s minecraft:copper_chestplate 1

# put it on
item replace entity @s armor.chest with minecraft:copper_chestplate[minecraft:unbreakable={},minecraft:tooltip_display={hidden_components:["minecraft:unbreakable"]}]