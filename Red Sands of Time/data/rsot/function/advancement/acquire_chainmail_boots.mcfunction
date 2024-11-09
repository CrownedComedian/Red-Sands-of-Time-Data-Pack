advancement grant @s only rsot:custom/acquire_golden_boots

# remove the chainmail boots they just picked up
clear @s minecraft:chainmail_boots 1

# put it on their feet
item replace entity @s armor.feet with minecraft:chainmail_boots[minecraft:unbreakable={show_in_tooltip:false}]