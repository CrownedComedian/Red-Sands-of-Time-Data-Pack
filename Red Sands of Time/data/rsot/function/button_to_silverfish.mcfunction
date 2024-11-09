# Executed every tick

# Summon a silverfish for every cursed button item and rotate the silverfish to face the nearest player
execute at @e[nbt={Item:{components:{"minecraft:custom_data":{cursed: 1b}}}}] summon minecraft:silverfish run tp @s ~ ~ ~ facing entity @p

# Remove all curesed buttons
kill @e[nbt={Item: {components: {"minecraft:custom_data": {cursed: 1b}}}}]