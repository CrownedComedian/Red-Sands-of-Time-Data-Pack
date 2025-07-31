# Toggle repeat on
data modify storage rsot:jukebox repeat set value true
data modify entity @n[type=minecraft:text_display,tag=rsot_jukebox_repeat_text] text set value {text:"Repeat",bold:true}