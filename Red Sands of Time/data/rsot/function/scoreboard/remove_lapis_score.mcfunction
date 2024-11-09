# Clears players score and decrements team score

$scoreboard players operation @s last_lapis_pickup = @s $(team)
$scoreboard players operation total_team_lapis $(team) -= @s $(team)
$scoreboard players reset @s $(team)