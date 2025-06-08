# remove the chainmail leggings they just picked up
clear @s minecraft:chainmail_leggings 1

# put it on their legs
item replace entity @s armor.legs with minecraft:chainmail_leggings[minecraft:unbreakable={},minecraft:tooltip_display={hidden_components:["minecraft:unbreakable"]}]