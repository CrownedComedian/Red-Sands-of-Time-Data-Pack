# Executed when a player attempts to add sand to a full timer.

function rsot:playsound/add_sand_failure

title @s subtitle {"text":"The timer is full","color":"#b09870"}
title @s title ""

advancement revoke @s only rsot:custom/timer_is_full