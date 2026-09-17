# Reset the game after ending
# Used when the game is over and the admin wants to reset the game state to prepare for a new game w/o going to the 'open' state first

# Hide team scores on the scoreboard structure in liminal space
function rsot:data/hide_team_scores
function rsot:data/clear_team_ranks

function rsot:scoreboard/reset

# Set team scoreboard displays
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.gold
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.dark_green
scoreboard objectives setdisplay sidebar.team.aqua
scoreboard objectives setdisplay sidebar.team.dark_aqua
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.dark_purple
scoreboard objectives setdisplay sidebar.team.light_purple