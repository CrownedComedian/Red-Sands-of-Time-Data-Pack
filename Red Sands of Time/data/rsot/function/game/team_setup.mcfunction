# Wipe scoreboard data
$scoreboard players reset * $(team)

# # Wipe timer ata
# $data remove storage rsot:timers $(team)

# Set team scoreboard displays
$scoreboard objectives setdisplay sidebar.team.$(color) $(team)
$scoreboard players display name total_team_lapis $(team) {"text":"Total Team Lapis","underlined":true,"color":"$(color)"}

# Add team to tp queue if there are players on this team
$execute if entity @p[team=$(team)] run data modify storage rsot:game teams_to_tp append value "$(team)"