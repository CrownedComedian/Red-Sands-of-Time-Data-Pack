# Executed for each team playing the game (not always 10 teams)

# Use the next team's dimension
data modify storage rsot:generation location.dimension set from storage rsot:game teams_to_tp[0]

# Break case to start pre-game and tp spectators to @r teams
execute unless data storage rsot:game teams_to_tp[0] as @a[predicate=rsot:in_liminal_space,predicate=!rsot:is_rsot_team_member] run tp @s @r[predicate=rsot:in_tomb_dimension,predicate=rsot:is_rsot_team_member]
execute unless data storage rsot:game teams_to_tp[0] run return run function rsot:game/pregame_loop

# tp players of next team to their dimension
function rsot:tp/next_team with storage rsot:generation location

# Generate tombs after team players have been teleported
schedule function rsot:scheduled/tomb_setup 5t

# Remove the team from the list of teams to tp
data remove storage rsot:game teams_to_tp[0]

# Continue to the next team
schedule function rsot:game/pregame 13t