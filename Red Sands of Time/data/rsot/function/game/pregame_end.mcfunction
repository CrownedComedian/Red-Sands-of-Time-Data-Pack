# Executed when the pregame timer ends and the game begins!

# Allow path segments to generate
data modify storage rsot:generation activated set value true

# Ensure title display fade in, fade out, and duration are set
title @a[predicate=rsot:in_tomb_dimension] times 0t 90t 10t

# Ensure timer gong sounds are played
reload