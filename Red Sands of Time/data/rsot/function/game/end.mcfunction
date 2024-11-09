# Executed when all players have respawned in liminal space after a game.
data modify storage rsot:game state set value "end"

# Open cage
function rsot:game/free_players with storage rsot:game cage

# Playsound
execute as @a[nbt={Dimension:"rsot:liminal_space"}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 1.414214

# Show team scores on the scoreboard structure in liminal space
data modify entity @n[tag=red_rabbits_score] text set value '{"color":"red","score":{"name":"#banked","objective":"red_rabbits"}}'
data modify entity @n[tag=orange_ocelots_score] text set value '{"color":"gold","score":{"name":"#banked","objective":"orange_ocelots"}}'
data modify entity @n[tag=yellow_yaks_score] text set value '{"color":"yellow","score":{"name":"#banked","objective":"yellow_yaks"}}'
data modify entity @n[tag=lime_llamas_score] text set value '{"color":"green","score":{"name":"#banked","objective":"lime_llamas"}}'
data modify entity @n[tag=green_geckos_score] text set value '{"color":"dark_green","score":{"name":"#banked","objective":"green_geckos"}}'
data modify entity @n[tag=aqua_axolotls_score] text set value '{"color":"aqua","score":{"name":"#banked","objective":"aqua_axolotls"}}'
data modify entity @n[tag=cyan_coyotes_score] text set value '{"color":"dark_aqua","score":{"name":"#banked","objective":"cyan_coyotes"}}'
data modify entity @n[tag=blue_bats_score] text set value '{"color":"blue","score":{"name":"#banked","objective":"blue_bats"}}'
data modify entity @n[tag=purple_pandas_score] text set value '{"color":"dark_purple","score":{"name":"#banked","objective":"purple_pandas"}}'
data modify entity @n[tag=pink_parrots_score] text set value '{"color":"light_purple","score":{"name":"#banked","objective":"pink_parrots"}}'