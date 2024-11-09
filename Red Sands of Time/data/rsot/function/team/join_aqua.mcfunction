team join aqua_axolotls @s
effect give @s minecraft:glowing infinite 0 true
effect give @s minecraft:saturation infinite 0 true
playsound minecraft:entity.puffer_fish.blow_up master @s ~ ~ ~
tellraw @s ["You have joined the ", {"text":"Aqua Axolotls", "color":"aqua"}]
tellraw @s "You can change teams by walking into another team's tent"