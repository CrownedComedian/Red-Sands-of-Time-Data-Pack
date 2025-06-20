# Personal helper function during the creation of rsot, not actually run during the game.

# 1st row (bottom row)
$execute align xyz run summon minecraft:block_display ~$(x1) ~ ~$(z1) {block_state:{Name:iron_bars,Properties:{north:"$(zonal)",south:"$(zonal)",east:"$(meridional)",west:"$(meridional)"}},teleport_duration:10,Tags:[$(tag)]}
$execute align xyz run summon minecraft:block_display ~$(x2) ~ ~$(z2) {block_state:{Name:iron_bars,Properties:{north:"$(zonal)",south:"$(zonal)",east:"$(meridional)",west:"$(meridional)"}},teleport_duration:10,Tags:[$(tag)]}
$execute align xyz run summon minecraft:block_display ~$(x3) ~ ~$(z3) {block_state:{Name:iron_bars,Properties:{north:"$(zonal)",south:"$(zonal)",east:"$(meridional)",west:"$(meridional)"}},teleport_duration:10,Tags:[$(tag)]}

# 2nd row
$execute align xyz run summon minecraft:block_display ~$(x1) ~1 ~$(z1) {block_state:{Name:iron_bars,Properties:{north:"$(zonal)",south:"$(zonal)",east:"$(meridional)",west:"$(meridional)"}},teleport_duration:10,Tags:[$(tag)]}
$execute align xyz run summon minecraft:block_display ~$(x2) ~1 ~$(z2) {block_state:{Name:iron_bars,Properties:{north:"$(zonal)",south:"$(zonal)",east:"$(meridional)",west:"$(meridional)"}},teleport_duration:10,Tags:[$(tag)]}
$execute align xyz run summon minecraft:block_display ~$(x3) ~1 ~$(z3) {block_state:{Name:iron_bars,Properties:{north:"$(zonal)",south:"$(zonal)",east:"$(meridional)",west:"$(meridional)"}},teleport_duration:10,Tags:[$(tag)]}

# 3rd row
$execute align xyz run summon minecraft:block_display ~$(x1) ~2 ~$(z1) {block_state:{Name:iron_bars,Properties:{north:"$(zonal)",south:"$(zonal)",east:"$(meridional)",west:"$(meridional)"}},teleport_duration:10,Tags:[$(tag)]}
$execute align xyz run summon minecraft:block_display ~$(x2) ~2 ~$(z2) {block_state:{Name:iron_bars,Properties:{north:"$(zonal)",south:"$(zonal)",east:"$(meridional)",west:"$(meridional)"}},teleport_duration:10,Tags:[$(tag)]}
$execute align xyz run summon minecraft:block_display ~$(x3) ~2 ~$(z3) {block_state:{Name:iron_bars,Properties:{north:"$(zonal)",south:"$(zonal)",east:"$(meridional)",west:"$(meridional)"}},teleport_duration:10,Tags:[$(tag)]}

# 4th row
$execute align xyz run summon minecraft:block_display ~$(x1) ~3 ~$(z1) {block_state:{Name:iron_bars,Properties:{north:"$(zonal)",south:"$(zonal)",east:"$(meridional)",west:"$(meridional)"}},teleport_duration:10,Tags:[$(tag)]}
$execute align xyz run summon minecraft:block_display ~$(x2) ~3 ~$(z2) {block_state:{Name:iron_bars,Properties:{north:"$(zonal)",south:"$(zonal)",east:"$(meridional)",west:"$(meridional)"}},teleport_duration:10,Tags:[$(tag)]}
$execute align xyz run summon minecraft:block_display ~$(x3) ~3 ~$(z3) {block_state:{Name:iron_bars,Properties:{north:"$(zonal)",south:"$(zonal)",east:"$(meridional)",west:"$(meridional)"}},teleport_duration:10,Tags:[$(tag)]}
 
# 5th row
$execute align xyz run summon minecraft:block_display ~$(x1) ~4 ~$(z1) {block_state:{Name:chain,Properties:{axis:"y"}},teleport_duration:10,Tags:[$(tag)]}
$execute align xyz run summon minecraft:block_display ~$(x3) ~4 ~$(z3) {block_state:{Name:chain,Properties:{axis:"y"}},teleport_duration:10,Tags:[$(tag)]}

# 6th row
$execute align xyz run summon minecraft:block_display ~$(x1) ~5 ~$(z1) {block_state:{Name:chain,Properties:{axis:"y"}},teleport_duration:10,Tags:[$(tag)]}
$execute align xyz run summon minecraft:block_display ~$(x3) ~5 ~$(z3) {block_state:{Name:chain,Properties:{axis:"y"}},teleport_duration:10,Tags:[$(tag)]}

# 7th row
$execute align xyz run summon minecraft:block_display ~$(x1) ~6 ~$(z1) {block_state:{Name:chain,Properties:{axis:"y"}},teleport_duration:10,Tags:[$(tag)]}
$execute align xyz run summon minecraft:block_display ~$(x3) ~6 ~$(z3) {block_state:{Name:chain,Properties:{axis:"y"}},teleport_duration:10,Tags:[$(tag)]}

# 8th row (top row)
$execute align xyz run summon minecraft:block_display ~$(x1) ~7 ~$(z1) {block_state:{Name:chain,Properties:{axis:"y"}},teleport_duration:10,Tags:[$(tag)]}
$execute align xyz run summon minecraft:block_display ~$(x3) ~7 ~$(z3) {block_state:{Name:chain,Properties:{axis:"y"}},teleport_duration:10,Tags:[$(tag)]}