# 1st row (bottom row)
execute align xyz run summon minecraft:block_display ~ ~ ~-1 {block_state:{Name:iron_bars,Properties:{east:"true",west:"true"}},teleport_duration:10}

# 2nd row
execute align xyz run summon minecraft:block_display ~ ~1 ~-1 {block_state:{Name:iron_bars,Properties:{east:"true",west:"true"}},teleport_duration:10}
