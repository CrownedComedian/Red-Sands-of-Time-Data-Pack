advancement revoke @s only rsot:custom/pickup_lapis
execute store result score @s last_lapis_pickup run data get entity @s Inventory[{id:"minecraft:lapis_lazuli"}].Count
clear @s minecraft:lapis_lazuli
scoreboard players operation @s recent_laips_pickup += @s last_lapis_pickup
execute unless score @s lapis_pickup_cooldown matches 0.. run title @s subtitle [{"text":"$","color":"blue"},{"score":{"name":"@p","objective":"last_lapis_pickup"}}]
execute if score @s lapis_pickup_cooldown matches 0.. run title @s subtitle [{"text":"$","color":"blue"},{"score":{"name":"@p","objective":"last_lapis_pickup"}},{"text":" (+$"},{"score":{"name":"@p","objective":"recent_lapis_pickup"}},{"text":")"}]
title @s title ""
scoreboard players set @s lapis_pickup_cooldown 100