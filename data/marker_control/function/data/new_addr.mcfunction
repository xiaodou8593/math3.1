#marker_control:data/new_addr
# marker_control:data/init_player调用

# 扩充空间
data modify storage marker_control:io player_space append value {}

# 扩充编号
data modify storage marker_control:io free_addr prepend value 0
execute store result storage marker_control:io free_addr[0] int 1 run scoreboard players add #id marker_control_id 1