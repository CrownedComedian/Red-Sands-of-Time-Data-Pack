# Create pre-game bossbar
bossbar add rsot:pregame {"text":"pregame"}
bossbar set rsot:pregame max 60

# Scoreboard values used on markers when generating paths
scoreboard objectives add size dummy
scoreboard players set #max_path_variants size 6
scoreboard objectives add x dummy
scoreboard objectives add z dummy
scoreboard players set #16 x 16
scoreboard players set #16 z 16

# Scoreboard values used for gameplay
scoreboard objectives add regen_cooldown dummy
scoreboard objectives add time_remaining dummy
scoreboard players set #RegenCooldown time_remaining 50
scoreboard players set #10 time_remaining 10
scoreboard objectives add gong_sounds dummy
scoreboard objectives add sand_queue dummy
scoreboard objectives add empty_time dummy
scoreboard objectives add death deathCount

# Scoreboard values used for lapis interactions
scoreboard objectives add last_lapis_pickup dummy
scoreboard objectives add lapis_pickup_cooldown dummy
scoreboard objectives add recent_lapis_pickup dummy

# Scoreboard value used for the admin portal
scoreboard objectives add rsot_admin_portal dummy

# Scoreboard value used for the jukebox playlist
scoreboard objectives add now_playing dummy
scoreboard players set #num_songs now_playing 16

effect give @a[predicate=rsot:in_rsot_dimension] minecraft:saturation infinite 0 true

weather clear