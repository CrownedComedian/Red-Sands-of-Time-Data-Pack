# Copy scoreboard values to storage
execute store result storage rsot:grid pointer.slot int 1 run scoreboard players get #slot grid
execute store result storage rsot:grid pointer.n int 1 unless predicate rsot:no_north_cell run scoreboard players get #n grid
execute store result storage rsot:grid pointer.s int 1 unless predicate rsot:no_south_cell run scoreboard players get #s grid
execute store result storage rsot:grid pointer.e int 1 unless predicate rsot:no_east_cell run scoreboard players get #e grid
execute store result storage rsot:grid pointer.w int 1 unless predicate rsot:no_west_cell run scoreboard players get #w grid