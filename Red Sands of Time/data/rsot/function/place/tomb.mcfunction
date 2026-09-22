# 'if loaded' ensures the command only runs if the destination chunk is loaded, 
# guarding against servers that haven't finished loading it yet
$execute in rsot:$(dimension) if loaded $(x) 62 $(z) at @r[team=$(dimension)] store success storage rsot:placed_tombs content.$(dimension) int 1 run place structure rsot:tomb $(x) 62 $(z)

# Destination chunk wasn't loaded yet on this server, only perform retry
$execute if data storage rsot:placed_tombs {content:{$(dimension):0}} run return run schedule function rsot:scheduled/tomb_setup 1s

# Destination chunk was successfully loaded and the tomb structure was placed, continue

# Remove the team from the list of teams to tp
data remove storage rsot:game teams_to_tp[0]

# Continue to the next team
schedule function rsot:game/pregame 10t