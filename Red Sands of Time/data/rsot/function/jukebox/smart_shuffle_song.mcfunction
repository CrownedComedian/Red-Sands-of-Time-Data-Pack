# Helper funtion for rsot:jukebox/smart_shuffle.mcfunction
$data modify storage rsot:jukebox shuffle_playlist append from storage rsot:jukebox indexes[$(index)]
$data remove storage rsot:jukebox indexes[$(index)]