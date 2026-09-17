# Ensure teams are created and colored
$team add $(snake_name) {"text":"$(display_name)","color":"$(color)"}
$team modify $(snake_name) color $(color)
$data modify storage rsot:teams $(snake_name).display_name set value '{"text":"$(display_name)","color":"$(color)","underlined":false}'
$scoreboard objectives add $(snake_name) dummy {"text":"$(display_name)","color":"$(color)"}
$scoreboard objectives modify $(snake_name) numberformat styled {"color":"white"}