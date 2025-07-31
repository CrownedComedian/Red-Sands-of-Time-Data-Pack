$playsound $(song) record @a

data modify storage rsot:jukebox can_restart set value false

# Schedule next song
$schedule function rsot:jukebox/next $(duration)s replace

# Schedule end restart delay
schedule function rsot:jukebox/end_restart_delay 3s