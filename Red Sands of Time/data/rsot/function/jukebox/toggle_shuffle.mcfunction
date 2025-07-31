# Executed when the player presses the shuffle button

# Toggle the shuffle value
execute if data storage rsot:jukebox shuffle_playlist run return run function rsot:jukebox/toggle_shuffle_off
function rsot:jukebox/toggle_shuffle_on