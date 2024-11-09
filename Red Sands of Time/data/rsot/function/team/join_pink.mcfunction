team join pink_parrots @s
effect give @s minecraft:glowing infinite 0 true
effect give @s minecraft:saturation infinite 0 true
playsound minecraft:entity.puffer_fish.blow_up master @s ~ ~ ~
tellraw @s ["You have joined the ", {"text":"Pink Parrots", "color":"light_purple"}]
tellraw @s "You can change teams by walking into another team's tent"