#marker_control:data/_free_player
# 释放一名玩家的玩家空间
# 传入玩家为执行者

data modify storage marker_control:io free_addr prepend value 0
execute store result storage marker_control:io free_addr[0] int 1 run scoreboard players get @s marker_control_id

scoreboard players reset @s customdata_type