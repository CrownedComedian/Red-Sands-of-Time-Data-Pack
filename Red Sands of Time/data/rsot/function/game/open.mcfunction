# Opens the game for play
data modify storage rsot:game state set value "open"

function rsot:game/reset

# Give all players in liminal_space resistance
effect give @a[predicate=rsot:in_liminal_space] minecraft:resistance infinite 255 true