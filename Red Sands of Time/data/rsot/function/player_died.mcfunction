# Executed when a player dies due to a skill issue :)

# Wipe the player's lapis lazuli score
execute if score @s red_rabbits matches 1.. run function rsot:scoreboard/remove_lapis_score {team:"red_rabbits"}
execute if score @s orange_ocelots matches 1.. run function rsot:scoreboard/remove_lapis_score {team:"orange_ocelots"}
execute if score @s yellow_yaks matches 1.. run function rsot:scoreboard/remove_lapis_score {team:"yellow_yaks"}
execute if score @s lime_llamas matches 1.. run function rsot:scoreboard/remove_lapis_score {team:"lime_llamas"}
execute if score @s green_geckos matches 1.. run function rsot:scoreboard/remove_lapis_score {team:"green_geckos"}
execute if score @s aqua_axolotls matches 1.. run function rsot:scoreboard/remove_lapis_score {team:"aqua_axolotls"}
execute if score @s cyan_coyotes matches 1.. run function rsot:scoreboard/remove_lapis_score {team:"cyan_coyotes"}
execute if score @s blue_bats matches 1.. run function rsot:scoreboard/remove_lapis_score {team:"blue_bats"}
execute if score @s purple_pandas matches 1.. run function rsot:scoreboard/remove_lapis_score {team:"purple_pandas"}
execute if score @s pink_parrots matches 1.. run function rsot:scoreboard/remove_lapis_score {team:"pink_parrots"}

# Reset advancements
advancement revoke @s through rsot:custom/root

# Cleanup
tag @s remove free
scoreboard players reset @s death
scoreboard players reset @s last_lapis_pickup