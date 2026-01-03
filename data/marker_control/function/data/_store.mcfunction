#marker_control:data/_store
# 储存实体NBT空间
# 输入storage marker_control:io result

# 存储非玩家空间
execute if score @s customdata_type matches 1 run return run data modify entity @s data.marker_control_storage set from storage marker_control:io result

# 存储玩家空间
execute store result storage marker_control:io index int 1 run scoreboard players get @s marker_control_id
function marker_control:data/store_player with storage marker_control:io {}