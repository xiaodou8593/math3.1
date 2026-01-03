#marker_control:data/_free_player_id
# 根据玩家id释放一名玩家的玩家空间
# 输入macro storage marker_control:io {input}

data modify storage marker_control:io free_addr prepend value 0
$scoreboard players operation sstemp_id int = $(input) marker_control_id
execute store result storage marker_control:io free_addr[0] int 1 run scoreboard players get sstemp_id int

$scoreboard players reset $(input) customdata_type