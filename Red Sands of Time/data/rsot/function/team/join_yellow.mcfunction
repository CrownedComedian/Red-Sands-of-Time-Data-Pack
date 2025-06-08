team join yellow_yaks @s
effect give @s minecraft:glowing infinite 0 true
effect give @s minecraft:saturation infinite 0 true
playsound minecraft:entity.puffer_fish.blow_up master @s ~ ~ ~
advancement revoke @s only rsot:custom/clear_team
function rsot:tellraw/join_team with storage rsot:teams yellow_yaks