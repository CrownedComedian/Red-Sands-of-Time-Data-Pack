# Gives the player full leather armor and all items to start with
item replace entity @p armor.head with minecraft:leather_helmet[minecraft:unbreakable={}, tooltip_display={hidden_components:["minecraft:unbreakable"]}]
item replace entity @p armor.chest with minecraft:leather_chestplate[minecraft:unbreakable={}, tooltip_display={hidden_components:["minecraft:unbreakable"]}]
item replace entity @p armor.legs with minecraft:leather_leggings[minecraft:unbreakable={}, tooltip_display={hidden_components:["minecraft:unbreakable"]}]
item replace entity @p armor.feet with minecraft:leather_boots[minecraft:unbreakable={}, tooltip_display={hidden_components:["minecraft:unbreakable"]}]

loot give @p loot rsot:start_items