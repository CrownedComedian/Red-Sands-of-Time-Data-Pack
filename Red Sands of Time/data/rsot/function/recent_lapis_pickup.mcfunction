# Executed when the player finds lapis lazuli.
scoreboard players operation @s recent_lapis_pickup += @s last_lapis_pickup
title @s subtitle [{"text":"$","color":"#5a82e2"},{"score":{"name":"@p","objective":"recent_lapis_pickup"}},{"text":" (+$"},{"score":{"name":"@p","objective":"last_lapis_pickup"}},{"text":")"}]
title @s title ""
scoreboard players set @s lapis_pickup_cooldown 100