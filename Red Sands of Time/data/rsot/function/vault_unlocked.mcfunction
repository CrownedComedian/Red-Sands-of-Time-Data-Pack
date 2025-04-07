$function rsot:tellraw/announce_vault_unlocked with storage rsot:teams $(team)

# Play sounds
$execute as @a[team=$(team),predicate=rsot:in_rsot_dimension] at @s run function rsot:playsound/vault_unlocked
$execute as @a[team=!$(team),predicate=rsot:in_rsot_dimension] at @s run function rsot:playsound/distant_vault_unlocked