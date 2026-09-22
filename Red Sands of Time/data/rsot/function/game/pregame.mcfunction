# Executed for each team playing the game (not always 10 teams)

# Break case to start pre-game loop
execute unless data storage rsot:game teams_to_tp[0] run return run function rsot:game/start_pregame_loop

# Use the next team's dimension
data modify storage rsot:generation location.dimension set from storage rsot:game teams_to_tp[0]

# tp players of next team to their dimension
function rsot:tp/next_team with storage rsot:generation location

# Generate tombs after team players have been teleported
schedule function rsot:scheduled/tomb_setup 10t
