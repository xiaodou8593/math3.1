#math:test
# 以玩家为执行者

tp @s 0.0 0.0 0.0 0.0 0.0
tp @e[tag=math_marker,limit=1] 0.0 0.0 0.0 0.0 0.0

execute at @s rotated 0.0 91.0 run tp @s ~ ~ ~ ~ ~
tellraw @a ["player_rotation: ", {"nbt":"Rotation","entity":"@s"}]

execute as @e[tag=math_marker,limit=1] at @s rotated 0.0 91.0 run tp @s ~ ~ ~ ~ ~
tellraw @a ["marker_rotation: ", {"nbt":"Rotation","entity":"@e[tag=math_marker,limit=1]"}]