# Executed when a new tomb is generated.

# Timer starts overfilled with 13 red sand block display entities.
$scoreboard players set $(team) time_remaining 141
$scoreboard players set $(team) gong_sounds 141

# No sand in the queue for this timer.
$scoreboard players set $(team) sand_queue 0

# Since the timer is overfilled, there is no room for sand in the timer.
$scoreboard players set $(team) empty_time -10

# Start with $0 banked
$scoreboard players set #banked $(team) 0