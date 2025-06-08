# Executed when all players have respawned in liminal space after a game or manually by an admin.
data modify storage rsot:game state set value "end"

# Tp potential remaining players to liminal space
execute as @a[predicate=rsot:in_tomb_dimension] run function rsot:game/exit with storage rsot:game respawn.caged

# Open cage
execute in rsot:liminal_space run function rsot:setblock/redstone with storage rsot:game cage

# Playsound
execute as @a[predicate=rsot:in_liminal_space] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 1.414214

# Show team scores on the scoreboard structure in liminal space
function rsot:data/show_team_scores

execute as @a[predicate=rsot:in_liminal_space] run function rsot:tellraw/msg {msg:'{text:"The match has concluded; team scores are displayed on the scoreboard!", color:"white", underlined:false}'}

# Terminate admin portal connection
function rsot:portal/end