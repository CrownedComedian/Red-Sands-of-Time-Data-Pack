# Executed when a player walks into a nether_portal block.
function rsot:scoreboard/bank with entity @n[type=minecraft:marker,tag=rsot_timer,distance=..60] data
clear @s *[!custom_data={rsot:{book_type:"admin_portal"}}]

# Exit the tomb
function rsot:game/exit with storage rsot:game respawn.escape