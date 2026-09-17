# Start the pre-game
data modify storage rsot:game state set value "pregame"

# Close cage
function rsot:setblock/redstone with storage rsot:game cage

# Prep players for the game
tag @a[predicate=rsot:in_liminal_space,predicate=rsot:is_rsot_team_member] add needs_tomb_spawnpoint
gamemode adventure @a[predicate=rsot:in_liminal_space,predicate=rsot:is_rsot_team_member]
gamemode spectator @a[predicate=rsot:in_liminal_space,predicate=!rsot:is_rsot_team_member]
effect give @a[predicate=rsot:in_liminal_space] minecraft:slow_falling infinite 9 true
effect give @a[predicate=rsot:in_liminal_space] minecraft:darkness infinite 9 true
execute as @a[predicate=rsot:in_liminal_space] run playsound block.portal.travel master @s ~ ~ ~ 0.8
schedule function rsot:effect/enter_blindness 22t
title @a[predicate=rsot:in_liminal_space] times 0t 25t 0t
execute as @a[predicate=rsot:in_liminal_space,predicate=rsot:is_rsot_team_member] run function rsot:tellraw/msg {msg:'{"text":"The game has started, yow will be in your tomb shortly...", color:"white", underlined:false}'}
execute as @a[predicate=rsot:in_liminal_space,predicate=!rsot:is_rsot_team_member] run function rsot:tellraw/msg {msg:'{"text":"The game has started, yow will teleported to a random team shortly..." color:"white", underlined:false}'}

# Wipe scoreboard data
# (team scoreboard data wiped in rsot:game/team_setup.mcfunction)
scoreboard players reset * death
scoreboard players reset * lapis_pickup_cooldown
scoreboard players reset * last_lapis_pickup
scoreboard players reset * recent_lapis_pickup

# Run setup for teams
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

# Don't place all paths during pre-game
data modify storage rsot:generation activated set value false

# Begin pre-game timer
scoreboard players set #pregame time_remaining 60

# tp all players to their teams' dimension after blindness
schedule function rsot:game/pregame 24t

# Terminate admin portal connection
function rsot:portal/end

function rsot:tellraw/msg {msg:'{text:"starting...", color:"white", underlined:false}'}