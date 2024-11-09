
# $give @p $(id)[minecraft:can_break={'predicates':[{'blocks':'#rsot:breakable'}],show_in_tooltip:false},minecraft:unbreakable={show_in_tooltip:false}] $(count)
$summon minecraft:item ~ ~ ~ {Item:{id:"$(id)", count: $(count), components:{"minecraft:can_break":{'predicates':[{'blocks':'#rsot:breakable'}], show_in_tooltip:false}, "minecraft:unbreakable":{show_in_tooltip:false}}}}
kill @s