# Opens the game for play
data modify storage rsot:game state set value "open"

# Hide team scores on the scoreboard structure in liminal space
function rsot:data/hide_team_scores