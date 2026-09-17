# Designed to be executed in the liminal_space dimension

data modify entity @n[tag=red_rabbits_score] text set value {"color":"red","score":{"name":"#banked","objective":"red_rabbits"}}
data modify entity @n[tag=orange_ocelots_score] text set value {"color":"gold","score":{"name":"#banked","objective":"orange_ocelots"}}
data modify entity @n[tag=yellow_yaks_score] text set value {"color":"yellow","score":{"name":"#banked","objective":"yellow_yaks"}}
data modify entity @n[tag=lime_llamas_score] text set value {"color":"green","score":{"name":"#banked","objective":"lime_llamas"}}
data modify entity @n[tag=green_geckos_score] text set value {"color":"dark_green","score":{"name":"#banked","objective":"green_geckos"}}
data modify entity @n[tag=aqua_axolotls_score] text set value {"color":"aqua","score":{"name":"#banked","objective":"aqua_axolotls"}}
data modify entity @n[tag=cyan_coyotes_score] text set value {"color":"dark_aqua","score":{"name":"#banked","objective":"cyan_coyotes"}}
data modify entity @n[tag=blue_bats_score] text set value {"color":"blue","score":{"name":"#banked","objective":"blue_bats"}}
data modify entity @n[tag=purple_pandas_score] text set value {"color":"dark_purple","score":{"name":"#banked","objective":"purple_pandas"}}
data modify entity @n[tag=pink_parrots_score] text set value {"color":"light_purple","score":{"name":"#banked","objective":"pink_parrots"}}

# Clear old rankings data
function rsot:data/clear_team_ranks

# Compute rankings
execute if score #banked red_rabbits matches 0.. run function rsot:compute_team_rank {team:"red_rabbits"}
execute if score #banked orange_ocelots matches 0.. run function rsot:compute_team_rank {team:"orange_ocelots"}
execute if score #banked yellow_yaks matches 0.. run function rsot:compute_team_rank {team:"yellow_yaks"}
execute if score #banked lime_llamas matches 0.. run function rsot:compute_team_rank {team:"lime_llamas"}
execute if score #banked green_geckos matches 0.. run function rsot:compute_team_rank {team:"green_geckos"}
execute if score #banked aqua_axolotls matches 0.. run function rsot:compute_team_rank {team:"aqua_axolotls"}
execute if score #banked cyan_coyotes matches 0.. run function rsot:compute_team_rank {team:"cyan_coyotes"}
execute if score #banked blue_bats matches 0.. run function rsot:compute_team_rank {team:"blue_bats"}
execute if score #banked purple_pandas matches 0.. run function rsot:compute_team_rank {team:"purple_pandas"}
execute if score #banked pink_parrots matches 0.. run function rsot:compute_team_rank {team:"pink_parrots"}