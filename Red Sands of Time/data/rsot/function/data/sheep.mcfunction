$data modify entity @s Color set value $(color)
execute anchored eyes run function rsot:data/leash with block ^ ^ ^2
$execute anchored eyes run setblock ^ ^ ^2 $(fence_type)
data modify entity @s NoAI set value false