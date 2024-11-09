# remove the golden chestplate they just picked up
clear @s minecraft:golden_chestplate 1

# put it on
item replace entity @s armor.chest with minecraft:golden_chestplate[minecraft:unbreakable={show_in_tooltip:false}]