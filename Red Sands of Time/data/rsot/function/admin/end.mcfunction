# Executed when all players have respawned in liminal space after a game.
data modify storage rsot:game state set value "end"

# Open cage
function rsot:setblock/redstone with storage rsot:game cage

# Playsound
execute as @a[nbt={Dimension:"rsot:liminal_space"}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 1.414214

# Show team scores on the scoreboard structure in liminal space
function rsot:data/show_team_scores