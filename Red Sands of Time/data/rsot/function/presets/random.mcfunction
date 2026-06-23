# Put all path variants into the randomly pooled paths list
function rsot:tellraw/msg {msg:'{text:"Setting to random tomb generation preset", color:"white", underlined:false}'}

data modify storage rsot:generation preset set value "random"

data modify storage rsot:enabled_path_variants content set value []
data modify storage rsot:enabled_path_variants size set value 0

data modify storage rsot:pooled_path_variants content set value ["red", "yellow", "green", "lapis", "pink"]
data modify storage rsot:pooled_path_variants size set value 5
data modify storage rsot:pooled_path_variants min set value 3