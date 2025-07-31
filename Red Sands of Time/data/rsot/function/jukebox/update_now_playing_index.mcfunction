# Update the now_playing_index for the jukebox

# Repeat if repeat is true
execute if data storage rsot:jukebox {repeat:true} run return 0

# Play next song if repeat and shuffle are both false
$execute unless data storage rsot:jukebox shuffle_playlist if predicate {condition:"minecraft:value_check",value:{type:"minecraft:constant",value:$(reverse)},range:1} run scoreboard players remove @s now_playing 1
$execute unless data storage rsot:jukebox shuffle_playlist unless predicate {condition:"minecraft:value_check",value:{type:"minecraft:constant",value:$(reverse)},range:1} run scoreboard players add @s now_playing 1
execute unless data storage rsot:jukebox shuffle_playlist store result storage rsot:jukebox now_playing_index int 1 run return run scoreboard players operation @s now_playing %= #num_songs now_playing

# Shuffle only if repeat is false and a shuffle playlist exists
execute store result score @s now_playing store result storage rsot:jukebox now_playing_index int 1 run data get storage rsot:jukebox shuffle_playlist[0]
data remove storage rsot:jukebox shuffle_playlist[0]

# Re-create a shuffled playlist if we have reached the end
execute if data storage rsot:jukebox {shuffle_playlist:[]} run function rsot:jukebox/smart_shuffle
