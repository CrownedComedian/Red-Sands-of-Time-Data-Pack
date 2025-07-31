# Executed when the player presses the previous button

# Clear the schedule (if any)
schedule clear rsot:jukebox/next

# Stop the current song (if any)
function rsot:jukebox/stop with storage rsot:jukebox

# Update the now_playing score
execute unless data storage rsot:jukebox {can_restart:true} as @n[type=minecraft:marker,tag=rsot_jukebox] run function rsot:jukebox/update_now_playing_index {reverse:1}

# Play the next song
function rsot:jukebox/play with storage rsot:jukebox