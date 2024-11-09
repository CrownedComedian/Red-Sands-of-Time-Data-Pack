# remove the golden boots they just picked up
clear @s minecraft:golden_boots 1

# put it on their feet
item replace entity @s armor.feet with minecraft:golden_boots[minecraft:unbreakable={show_in_tooltip:false}]