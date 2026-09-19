# Clear the calculation bossbar for admins
bossbar remove minecraft:rsot_calculation
bossbar set rsot:pregame players @a[predicate=rsot:in_tomb_dimension]

# tp spectators to @r teams
execute as @a[predicate=rsot:in_liminal_space,predicate=!rsot:is_rsot_team_member] run tp @s @r[predicate=rsot:in_tomb_dimension,predicate=rsot:is_rsot_team_member]

# Begin the pre-game loop
function rsot:game/pregame_loop