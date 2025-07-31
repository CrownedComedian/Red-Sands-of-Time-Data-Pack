# Toggle shuffle off
data remove storage rsot:jukebox shuffle_playlist
data modify entity @n[type=minecraft:text_display,tag=rsot_jukebox_shuffle_text] text set value {text:"Shuffle",bold:false}
