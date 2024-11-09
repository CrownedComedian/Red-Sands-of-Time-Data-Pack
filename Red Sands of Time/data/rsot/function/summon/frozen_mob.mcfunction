# Personal helper function during the creation of rsot, not actually run during the game.

$execute align xyz positioned ~ ~ ~ run summon $(type) ~0.5 ~2 ~0.5 {NoAI:true,PersistenceRequired:1b,Silent:1b}
$execute if block ~ ~ ~ minecraft:command_block[facing=north] as @e[type=$(type),limit=1,sort=nearest] at @e[type=$(type),limit=1,sort=nearest] run tp @s ~ ~ ~ 180 0
$execute if block ~ ~ ~ minecraft:command_block[facing=south] as @e[type=$(type),limit=1,sort=nearest] at @e[type=$(type),limit=1,sort=nearest] run tp @s ~ ~ ~ 0 0
$execute if block ~ ~ ~ minecraft:command_block[facing=east] as @e[type=$(type),limit=1,sort=nearest] at @e[type=$(type),limit=1,sort=nearest] run tp @s ~ ~ ~ 270 0
$execute if block ~ ~ ~ minecraft:command_block[facing=west] as @e[type=$(type),limit=1,sort=nearest] at @e[type=$(type),limit=1,sort=nearest] run tp @s ~ ~ ~ 90 0

data modify block ~ ~ ~ auto set value 0b
data modify block ~ ~ ~ Command set value "function rsot:unfreeze_mob"