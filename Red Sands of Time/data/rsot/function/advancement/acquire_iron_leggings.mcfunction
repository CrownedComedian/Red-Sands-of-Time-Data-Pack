advancement grant @s only rsot:custom/acquire_chainmail_leggings

# remove the iron leggings they just picked up
clear @s minecraft:iron_leggings 1

# put it on their legs
item replace entity @s armor.legs with minecraft:iron_leggings[minecraft:unbreakable={},minecraft:tooltip_display={hidden_components:["minecraft:unbreakable"]}]