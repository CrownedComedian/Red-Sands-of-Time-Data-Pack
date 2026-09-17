# Executed when an admin manually ends the game during the pregame state

schedule clear rsot:effect/enter_blindness
schedule clear rsot:game/pregame
schedule clear rsot:game/pregame_loop
bossbar set rsot:pregame players
clear @s *[!custom_data={rsot:{book_type:"admin_portal"}}]
effect clear @a[predicate=rsot:in_liminal_space] minecraft:slow_falling
effect clear @a[predicate=rsot:in_liminal_space] minecraft:blindness
effect clear @a[predicate=rsot:in_liminal_space] minecraft:darkness
tag @a[predicate=rsot:is_rsot_team_member] remove needs_tomb_spawnpoint