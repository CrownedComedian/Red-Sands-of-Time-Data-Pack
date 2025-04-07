# Opens the game for play
data modify storage rsot:game state set value "open"

# Hide team scores on the scoreboard structure in liminal space
function rsot:data/hide_team_scores

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

# Give all players in liminal_space resistance
effect give @a[predicate=rsot:in_liminal_space] minecraft:resistance infinite 255 true