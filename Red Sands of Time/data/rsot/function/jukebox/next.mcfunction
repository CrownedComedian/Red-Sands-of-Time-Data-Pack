# Executed when the player presses the next button

# Clear the schedule (if any)
schedule clear rsot:jukebox/next

# Stop the current song (if any)
function rsot:jukebox/stop with storage rsot:jukebox

# Update the now_playing score
execute as @n[type=minecraft:marker,tag=rsot_jukebox] run function rsot:jukebox/update_now_playing_index {reverse:false}

# Play the next song
execute as @n[type=minecraft:marker,tag=rsot_jukebox] at @s run function rsot:jukebox/play with storage rsot:jukebox