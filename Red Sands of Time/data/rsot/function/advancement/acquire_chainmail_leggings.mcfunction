advancement grant @s only rsot:custom/acquire_golden_leggings

# remove the chainmail leggings they just picked up
clear @s minecraft:chainmail_leggings 1

# put it on
item replace entity @s armor.legs with minecraft:chainmail_leggings[minecraft:unbreakable={show_in_tooltip:false}]