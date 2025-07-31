# Executed when the player presses the repeat button

# Toggle the repeat value
execute if data storage rsot:jukebox {repeat:true} run return run function rsot:jukebox/toggle_repeat_off
function rsot:jukebox/toggle_repeat_on