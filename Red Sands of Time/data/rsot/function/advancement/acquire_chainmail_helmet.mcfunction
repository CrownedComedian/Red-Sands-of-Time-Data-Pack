advancement grant @s only rsot:custom/acquire_golden_helmet

# remove the golden helmet they just picked up
clear @s minecraft:chainmail_helmet 1

# put it on their head
item replace entity @s armor.head with minecraft:chainmail_helmet[minecraft:unbreakable={show_in_tooltip:false}]