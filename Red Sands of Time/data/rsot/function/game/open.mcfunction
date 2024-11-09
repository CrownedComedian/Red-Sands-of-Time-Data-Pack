# Opens the game for play
data modify storage rsot:game state set value "open"

# Hide team scores on the scoreboard structure in liminal space
data modify entity @n[tag=red_rabbits_score] text set value '{"text":"#####","color":"red","obfuscated":true}'
data modify entity @n[tag=orange_ocelots_score] text set value '{"text":"#####","color":"gold","obfuscated":true}'
data modify entity @n[tag=yellow_yaks_score] text set value '{"text":"#####","color":"yellow","obfuscated":true}'
data modify entity @n[tag=lime_llamas_score] text set value '{"text":"#####","color":"green","obfuscated":true}'
data modify entity @n[tag=green_geckos_score] text set value '{"text":"#####","color":"dark_green","obfuscated":true}'
data modify entity @n[tag=cyan_coyotes_score] text set value '{"text":"#####","color":"dark_aqua","obfuscated":true}'
data modify entity @n[tag=aqua_axolotls_score] text set value '{"text":"#####","color":"aqua","obfuscated":true}'
data modify entity @n[tag=blue_bats_score] text set value '{"text":"#####","color":"blue","obfuscated":true}'
data modify entity @n[tag=purple_pandas_score] text set value '{"text":"#####","color":"dark_purple","obfuscated":true}'
data modify entity @n[tag=pink_parrots_score] text set value '{"text":"#####","color":"light_purple","obfuscated":true}'