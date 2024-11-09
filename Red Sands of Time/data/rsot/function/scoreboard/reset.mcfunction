# Wipe scoreboard data
# (team scoreboard data wiped in rsot:game/team_setup.mcfuntion)
scoreboard players reset * death
scoreboard players reset * depth
scoreboard players reset * empty_time
scoreboard players reset * gong_sounds
scoreboard players reset * lapis_pickup_cooldown
scoreboard players reset * last_lapis_pickup
scoreboard players reset * recent_lapis_pickup
scoreboard players reset * sand_queue
scoreboard players reset * time_remaining

# Run setup for each team
function rsot:game/team_setup {team:"red_rabbits", color:"red"}
function rsot:game/team_setup {team:"orange_ocelots", color:"gold"}
function rsot:game/team_setup {team:"yellow_yaks", color:"yellow"}
function rsot:game/team_setup {team:"lime_llamas", color:"green"}
function rsot:game/team_setup {team:"green_geckos", color:"dark_green"}
function rsot:game/team_setup {team:"cyan_coyotes", color:"dark_aqua"}
function rsot:game/team_setup {team:"aqua_axolotls", color:"aqua"}
function rsot:game/team_setup {team:"blue_bats", color:"blue"}
function rsot:game/team_setup {team:"purple_pandas", color:"dark_purple"}
function rsot:game/team_setup {team:"pink_parrots", color:"light_purple"}