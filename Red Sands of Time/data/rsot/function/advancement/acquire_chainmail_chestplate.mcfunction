# remove the chainmail chestplate they just picked up
clear @s minecraft:chainmail_chestplate 1

# put it on
item replace entity @s armor.chest with minecraft:chainmail_chestplate[minecraft:unbreakable={},minecraft:tooltip_display={hidden_components:["minecraft:unbreakable"]}]