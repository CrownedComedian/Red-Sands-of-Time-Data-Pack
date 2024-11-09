# remove the golden helmet they just picked up
clear @s minecraft:golden_helmet 1

# put it on their head
item replace entity @s armor.head with minecraft:golden_helmet[minecraft:unbreakable={show_in_tooltip:false}]