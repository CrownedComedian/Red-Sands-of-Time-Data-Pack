# Ensure teams are created and colored
team add red_rabbits {"text":"Red Rabbits","color":"red"}
team modify red_rabbits color red
data modify storage rsot:teams red_rabbits.display_name set value '{"text":"Red Rabbits","color":"red","underlined":false}'
scoreboard objectives add red_rabbits dummy {"text":"Red Rabbits","color":"red"}
scoreboard objectives modify red_rabbits numberformat styled {"color":"white"}

team add orange_ocelots {"text":"Orange Ocelots","color":"gold"}
team modify orange_ocelots color gold
data modify storage rsot:teams orange_ocelots.display_name set value '{"text":"Orange Ocelots","color":"gold","underlined":false}'
scoreboard objectives add orange_ocelots dummy {"text":"Orange Ocelots","color":"gold"}
scoreboard objectives modify orange_ocelots numberformat styled {"color":"white"}

team add yellow_yaks {"text":"Yellow Yaks","color":"yellow"}
team modify yellow_yaks color yellow
data modify storage rsot:teams yellow_yaks.display_name set value '{"text":"Yellow Yaks","color":"yellow","underlined":false}'
scoreboard objectives add yellow_yaks dummy {"text":"Yellow Yaks","color":"yellow"}
scoreboard objectives modify yellow_yaks numberformat styled {"color":"white"}

team add lime_llamas {"text":"Lime Llamas","color":"green"}
team modify lime_llamas color green
data modify storage rsot:teams lime_llamas.display_name set value '{"text":"Lime Llamas","color":"green","underlined":false}'
scoreboard objectives add lime_llamas dummy {"text":"Lime Llamas","color":"green"}
scoreboard objectives modify lime_llamas numberformat styled {"color":"white"}

team add green_geckos {"text":"Green Geckos","color":"dark_green"}
team modify green_geckos color dark_green
data modify storage rsot:teams green_geckos.display_name set value '{"text":"Green Geckos","color":"dark_green","underlined":false}'
scoreboard objectives add green_geckos dummy {"text":"Green Geckos","color":"dark_green"}
scoreboard objectives modify green_geckos numberformat styled {"color":"white"}

team add cyan_coyotes {"text":"Cyan Coyotes","color":"dark_aqua"}
team modify cyan_coyotes color dark_aqua
data modify storage rsot:teams cyan_coyotes.display_name set value '{"text":"Cyan Coyotes","color":"dark_aqua","underlined":false}'
scoreboard objectives add cyan_coyotes dummy {"text":"Cyan Coyotes","color":"dark_aqua"}
scoreboard objectives modify cyan_coyotes numberformat styled {"color":"white"}

team add aqua_axolotls {"text":"Aqua Axolotls","color":"aqua"}
team modify aqua_axolotls color aqua
data modify storage rsot:teams aqua_axolotls.display_name set value '{"text":"Aqua Axolotls","color":"aqua","underlined":false}'
scoreboard objectives add aqua_axolotls dummy {"text":"Aqua Axolotls","color":"aqua"}
scoreboard objectives modify aqua_axolotls numberformat styled {"color":"white"}

team add blue_bats {"text":"Blue Bats","color":"blue"}
team modify blue_bats color blue
data modify storage rsot:teams blue_bats.display_name set value '{"text":"Blue Bats","color":"blue","underlined":false}'
scoreboard objectives add blue_bats dummy {"text":"Blue Bats","color":"blue"}
scoreboard objectives modify blue_bats numberformat styled {"color":"white"}

team add purple_pandas {"text":"Purple Pandas","color":"dark_purple"}
team modify purple_pandas color dark_purple
data modify storage rsot:teams purple_pandas.display_name set value '{"text":"Purple Pandas","color":"dark_purple","underlined":false}'
scoreboard objectives add purple_pandas dummy {"text":"Purple Pandas","color":"dark_purple"}
scoreboard objectives modify purple_pandas numberformat styled {"color":"white"}

team add pink_parrots {"text":"Pink Parrots","color":"light_purple"}
team modify pink_parrots color light_purple
data modify storage rsot:teams pink_parrots.display_name set value '{"text":"Pink Parrots","color":"light_purple","underlined":false}'
scoreboard objectives add pink_parrots dummy {"text":"Pink Parrots","color":"light_purple"}
scoreboard objectives modify pink_parrots numberformat styled {"color":"white"}

# Create pre-game bossbar
bossbar add rsot:pregame {"text":"pregame"}
bossbar set rsot:pregame max 60

# Scoreboard values used on markers when generating paths
scoreboard objectives add depth dummy
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

effect give @a[predicate=rsot:in_rsot_dimension] minecraft:saturation infinite 0 true

weather clear