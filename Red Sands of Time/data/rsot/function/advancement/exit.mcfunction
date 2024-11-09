# Executed when a player walks into a nether_portal block.
function rsot:scoreboard/bank with entity @s Inventory[{components:{"minecraft:custom_data":{rsot:{team_data:{}}}}}].components."minecraft:custom_data".rsot.team_data
clear @s

# Exit the tomb
function rsot:game/exit with storage rsot:game respawn.escape