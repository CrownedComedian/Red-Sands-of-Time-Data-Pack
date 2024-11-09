# Executed when the player finds lapis lazuli.

# Copy count to scoreboard
execute store result score @s last_lapis_pickup run data get entity @s Inventory[{id:"minecraft:lapis_lazuli"}].count
clear @s minecraft:lapis_lazuli

# Increment team and player scoreboard values
$scoreboard players operation @s $(team) += @s last_lapis_pickup
$scoreboard players operation total_team_lapis $(team) += @s last_lapis_pickup

# Display single and recent pickups
execute if score @s lapis_pickup_cooldown matches 0.. run return run function rsot:recent_lapis_pickup

# Display only single pickup count if no recent pickups
scoreboard players reset @s recent_lapis_pickup
scoreboard players operation @s recent_lapis_pickup += @s last_lapis_pickup
title @s subtitle [{"text":"$","color":"#5a82e2"},{"score":{"name":"@p","objective":"last_lapis_pickup"}}]
title @s title ""

# Set cooldown (90 stay + 10 fadeOut = 100)
# See rsot:game/pregame_end.mcfunction
scoreboard players set @s lapis_pickup_cooldown 100