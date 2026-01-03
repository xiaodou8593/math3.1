#marker_control:data/init_player
# marker_control:data/init_branch调用

# 分配玩家空间
execute unless data storage marker_control:io free_addr[0] run function marker_control:data/new_addr
execute store result score @s marker_control_id run data get storage marker_control:io free_addr[0]
data remove storage marker_control:io free_addr[0]

scoreboard players set @s customdata_type 0