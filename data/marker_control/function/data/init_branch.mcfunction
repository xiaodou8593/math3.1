#marker_control:data/init_branch
# marker_control:data/_get调用

# 初始化玩家空间
execute if entity @s[type=minecraft:player] run return run function marker_control:data/init_player

# 初始化非玩家空间
data modify entity @s data.marker_control_storage set value {}
scoreboard players set @s customdata_type 1