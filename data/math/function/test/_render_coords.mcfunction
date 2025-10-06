#math:test/_render_coords
# 输入storage math:io render_command
# 需要传入世界实体

execute store result score ssloop int run data get storage math:io test_coords
data modify entity @s Pos set from storage math:io test_coords[0]
data modify storage math:io test_coords append from storage math:io test_coords[0]
data remove storage math:io test_coords[0]
execute if score ssloop int matches 1.. at @s run function math:test/render_loop with storage math:io {}

data modify storage math:io test_coords prepend from storage math:io test_coords[-1]
data remove storage math:io test_coords[-1]

# 坐标安全
tp @s 0 0 0