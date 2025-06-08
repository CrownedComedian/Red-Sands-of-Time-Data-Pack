# Executed after a player closes their admin portal connection
execute as @a if score @s rsot_admin_portal matches 0 run function rsot:portal/end