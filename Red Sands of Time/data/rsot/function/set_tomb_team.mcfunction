# Add all nearby players to selected team
$team join $(team) @a[distance=0..30]

# Give glowing effect to all nearby players
$effect give @a[team=$(team)] minecraft:glowing infinite 0 true

# Update the text display
$data modify entity @e[type=minecraft:text_display,limit=1,sort=nearest] text set from storage rsot:teams $(team).display_name

# Set the tomb team
# $execute positioned ^$(x) ^$(y) ^$(z) run data modify entity @e[type=marker,limit=1,sort=nearest] ...
$execute positioned ^$(x) ^$(y) ^$(z) run setblock ~ ~ ~ bedrock