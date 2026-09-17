# Counts the number of teams who score is higher than the given team
# Usage: /function rsot:function/compute_team_rank {team:team_name}

$scoreboard players set #rank $(team) 0

# Update scoreboard rank value
$execute if score #banked red_rabbits > #banked $(team) run scoreboard players add #rank $(team) 1
$execute if score #banked orange_ocelots > #banked $(team) run scoreboard players add #rank $(team) 1
$execute if score #banked yellow_yaks > #banked $(team) run scoreboard players add #rank $(team) 1
$execute if score #banked lime_llamas > #banked $(team) run scoreboard players add #rank $(team) 1
$execute if score #banked green_geckos > #banked $(team) run scoreboard players add #rank $(team) 1
$execute if score #banked aqua_axolotls > #banked $(team) run scoreboard players add #rank $(team) 1
$execute if score #banked cyan_coyotes > #banked $(team) run scoreboard players add #rank $(team) 1
$execute if score #banked blue_bats > #banked $(team) run scoreboard players add #rank $(team) 1
$execute if score #banked purple_pandas > #banked $(team) run scoreboard players add #rank $(team) 1
$execute if score #banked pink_parrots > #banked $(team) run scoreboard players add #rank $(team) 1

# Display placement
$execute if score #rank $(team) matches 0 as @e[type=item_display,tag=$(team)_rank] run item replace entity @s container.0 with minecraft:bowl[minecraft:item_model="rsot:1st_place"]
$execute if score #rank $(team) matches 1 as @e[type=item_display,tag=$(team)_rank] run item replace entity @s container.0 with minecraft:bowl[minecraft:item_model="rsot:2nd_place"]
$execute if score #rank $(team) matches 2 as @e[type=item_display,tag=$(team)_rank] run item replace entity @s container.0 with minecraft:bowl[minecraft:item_model="rsot:3rd_place"]