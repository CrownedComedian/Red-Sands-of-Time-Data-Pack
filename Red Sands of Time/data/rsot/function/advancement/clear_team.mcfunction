# Executed when a player walks on top of the campfire in the center of the liminal space campsite
effect clear @s minecraft:glowing
playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~
execute if entity @s[team=red_rabbits] run function rsot:tellraw/leave_team with storage rsot:teams red_rabbits
execute if entity @s[team=orange_ocelots] run function rsot:tellraw/leave_team with storage rsot:teams orange_ocelots
execute if entity @s[team=yellow_yaks] run function rsot:tellraw/leave_team with storage rsot:teams yellow_yaks
execute if entity @s[team=lime_llamas] run function rsot:tellraw/leave_team with storage rsot:teams lime_llamas
execute if entity @s[team=green_geckos] run function rsot:tellraw/leave_team with storage rsot:teams green_geckos
execute if entity @s[team=aqua_axolotls] run function rsot:tellraw/leave_team with storage rsot:teams aqua_axolotls
execute if entity @s[team=blue_bats] run function rsot:tellraw/leave_team with storage rsot:teams blue_bats
execute if entity @s[team=cyan_coyotes] run function rsot:tellraw/leave_team with storage rsot:teams cyan_coyotes
execute if entity @s[team=purple_pandas] run function rsot:tellraw/leave_team with storage rsot:teams purple_pandas
execute if entity @s[team=pink_parrots] run function rsot:tellraw/leave_team with storage rsot:teams pink_parrots
team leave @s