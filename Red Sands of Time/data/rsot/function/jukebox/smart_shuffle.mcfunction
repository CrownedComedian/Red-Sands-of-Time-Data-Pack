# Build a shuffled playlist
data modify storage rsot:jukebox indexes set value [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
data remove storage rsot:jukebox shuffle_playlist

execute store result storage rsot:jukebox next_random.index int 1 run random value 0..15
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random

execute store result storage rsot:jukebox next_random.index int 1 run random value 0..14
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random

execute store result storage rsot:jukebox next_random.index int 1 run random value 0..13
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random
execute store result storage rsot:jukebox next_random.index int 1 run random value 0..12
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random
execute store result storage rsot:jukebox next_random.index int 1 run random value 0..11
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random
execute store result storage rsot:jukebox next_random.index int 1 run random value 0..10
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random
execute store result storage rsot:jukebox next_random.index int 1 run random value 0..9
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random
execute store result storage rsot:jukebox next_random.index int 1 run random value 0..8
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random
execute store result storage rsot:jukebox next_random.index int 1 run random value 0..7
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random
execute store result storage rsot:jukebox next_random.index int 1 run random value 0..6
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random
execute store result storage rsot:jukebox next_random.index int 1 run random value 0..5
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random
execute store result storage rsot:jukebox next_random.index int 1 run random value 0..4
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random
execute store result storage rsot:jukebox next_random.index int 1 run random value 0..3
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random
execute store result storage rsot:jukebox next_random.index int 1 run random value 0..2
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random
execute store result storage rsot:jukebox next_random.index int 1 run random value 0..1
function rsot:jukebox/smart_shuffle_song with storage rsot:jukebox next_random

data modify storage rsot:jukebox shuffle_playlist append from storage rsot:jukebox indexes[0]
data remove storage rsot:jukebox indexes
