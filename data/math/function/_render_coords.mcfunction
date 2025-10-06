#math:_render_coords
# 渲染输入的点列表
# 输入storage math:io input
# 输入storage math:io render_command
# 需要传入世界实体

execute store result score ssloop int run data get storage math:io input
data modify entity @s Pos set from storage math:io input[0]
data modify storage math:io input append from storage math:io input[0]
data remove storage math:io input[0]
execute if score ssloop int matches 1.. at @s run function math:render_loop with storage math:io {}