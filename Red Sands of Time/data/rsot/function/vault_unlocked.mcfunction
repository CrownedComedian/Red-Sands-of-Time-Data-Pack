$function rsot:tellraw/announce_vault_unlocked with storage rsot:teams $(team)

# Play sounds
$execute as @a[team=$(team)] at @s run function rsot:playsound/vault_unlocked
$execute as @a[team=!$(team)] at @s run function rsot:playsound/distant_vault_unlocked