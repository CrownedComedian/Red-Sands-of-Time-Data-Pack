# Executed when a player attempts to add sand to a jail cell with no player to free

function rsot:playsound/add_sand_failure

title @s subtitle {"text":"The jail cell is empty","color":"#b09870"}
title @s title ""

advancement revoke @s only rsot:custom/jail_is_empty