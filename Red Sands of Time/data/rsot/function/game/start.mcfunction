# Start a new game
data modify storage rsot:game state set value "pregame"

# Close cage
function rsot:setblock/redstone with storage rsot:game cage

# Prep players for the game
tag @a[nbt={Dimension:"rsot:liminal_space"}] add needs_tomb_spawnpoint
gamemode adventure @a[nbt={Dimension:"rsot:liminal_space"}]
bossbar set rsot:pregame players @a[nbt={Dimension:"rsot:liminal_space"}]
effect give @a[nbt={Dimension:"rsot:liminal_space"}] minecraft:slow_falling infinite 9 true
effect give @a[nbt={Dimension:"rsot:liminal_space"}] minecraft:darkness 3 9 true
execute as @a[nbt={Dimension:"rsot:liminal_space"}] run playsound block.portal.travel master @s ~ ~ ~
schedule function rsot:effect/enter_blindness 22t

# Wipe scoreboard data
function rsot:scoreboard/reset

# TODO - remove hard coded call to set depths:
# set depths because we just nuked them :(
function rsot:game/set_depths {red_key: 0, red_vault:2, yellow_key:1, yellow_vault:0, green_key:2, green_vault:3, lapis_key:3, lapis_vault:4, lame_vault:2, dead_end:1}

# Set team scoreboard displays
scoreboard objectives setdisplay sidebar.team.red red_rabbits
scoreboard objectives setdisplay sidebar.team.gold orange_ocelots
scoreboard objectives setdisplay sidebar.team.yellow yellow_yaks
scoreboard objectives setdisplay sidebar.team.green lime_llamas
scoreboard objectives setdisplay sidebar.team.dark_green green_geckos
scoreboard objectives setdisplay sidebar.team.aqua aqua_axolotls
scoreboard objectives setdisplay sidebar.team.dark_aqua cyan_coyotes
scoreboard objectives setdisplay sidebar.team.blue blue_bats
scoreboard objectives setdisplay sidebar.team.dark_purple purple_pandas
scoreboard objectives setdisplay sidebar.team.light_purple pink_parrots

scoreboard players display name total_team_lapis red_rabbits {"text":"Total Team Lapis","underlined":true,"color":"red"}
scoreboard players display name total_team_lapis orange_ocelots {"text":"Total Team Lapis","underlined":true,"color":"gold"}
scoreboard players display name total_team_lapis yellow_yaks {"text":"Total Team Lapis","underlined":true,"color":"yellow"}
scoreboard players display name total_team_lapis lime_llamas {"text":"Total Team Lapis","underlined":true,"color":"green"}
scoreboard players display name total_team_lapis green_geckos {"text":"Total Team Lapis","underlined":true,"color":"dark_green"}
scoreboard players display name total_team_lapis aqua_axolotls {"text":"Total Team Lapis","underlined":true,"color":"aqua"}
scoreboard players display name total_team_lapis cyan_coyotes {"text":"Total Team Lapis","underlined":true,"color":"dark_aqua"}
scoreboard players display name total_team_lapis blue_bats {"text":"Total Team Lapis","underlined":true,"color":"blue"}
scoreboard players display name total_team_lapis pink_parrots {"text":"Total Team Lapis","underlined":true,"color":"light_purple"}
scoreboard players display name total_team_lapis purple_pandas {"text":"Total Team Lapis","underlined":true,"color":"dark_purple"}

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

# Pick a new location for the tomb to generate at
execute store result storage rsot:generation location.x int 1.0 run random value -29000000..29000000
execute store result storage rsot:generation location.z int 1.0 run random value -29000000..29000000

# Shuffle paths of tomb
function rsot:data/shuffle_paths

# Begin pre-game timer
scoreboard players set #pregame time_remaining 60
schedule function rsot:game/pregame_loop 1s

# tp all players to their teams' dimension
schedule function rsot:game/pregame 24t

# Generate tombs once all players have been teleported
schedule function rsot:generate_tombs 50t