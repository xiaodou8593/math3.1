#marker_control:data/_get
# 获取实体NBT空间
# 输出storage marker_control:io result

# 初始化NBT存储空间
execute unless score @s customdata_type matches 0.. run function marker_control:data/init_branch

# 获取非玩家空间
execute if score @s customdata_type matches 1 run return run data modify storage marker_control:io result set from entity @s data.marker_control_storage

# 获取玩家空间
execute store result storage marker_control:io index int 1 run scoreboard players get @s marker_control_id
function marker_control:data/get_player with storage marker_control:io {}