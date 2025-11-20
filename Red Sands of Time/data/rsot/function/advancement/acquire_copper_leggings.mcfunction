# remove the copper leggings they just picked up
clear @s minecraft:copper_leggings 1

# put it on their legs
item replace entity @s armor.legs with minecraft:copper_leggings[minecraft:unbreakable={},minecraft:tooltip_display={hidden_components:["minecraft:unbreakable"]}]