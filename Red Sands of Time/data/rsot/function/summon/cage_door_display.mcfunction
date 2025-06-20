# Personal helper function during the creation of rsot, not actually run during the game.

$execute if block ~ ~ ~ minecraft:command_block[facing=north] run function rsot:summon/oriented_cage_door_display {x1:1, x2:0, x3:-1, z1:-1, z2:-1, z3:-1, meridional:"true", zonal:"false", tag:$(tag)}
$execute if block ~ ~ ~ minecraft:command_block[facing=south] run function rsot:summon/oriented_cage_door_display {x1:1, x2:0, x3:-1, z1:1, z2:1, z3:1, meridional:"true", zonal:"false", tag:$(tag)}
$execute if block ~ ~ ~ minecraft:command_block[facing=east] run function rsot:summon/oriented_cage_door_display {x1:1, x2:1, x3:1, z1:1, z2:0, z3:-1, meridional:"false", zonal:"true", tag:$(tag)}
$execute if block ~ ~ ~ minecraft:command_block[facing=west] run function rsot:summon/oriented_cage_door_display {x1:-1, x2:-1, x3:-1, z1:1, z2:0, z3:-1, meridional:"false", zonal:"true", tag:$(tag)}