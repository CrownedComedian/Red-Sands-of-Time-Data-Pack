# Executed when a player is granted the admin portal advancement

execute store success score @s rsot_admin_portal run tag @s add rsot_in_admin_portal
execute if score @s rsot_admin_portal matches 1 run function rsot:portal/open

schedule function rsot:portal/tick 1t append

advancement revoke @s only rsot:custom/admin_portal