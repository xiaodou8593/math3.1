#math:test

tellraw @a "rotate test"

tp @s 0.0 0.0 0.0 0.0 0.0
execute positioned 0.0 0.0 0.0 facing 0.0 1.0 0.0 run rotate @s ~ ~
tellraw @a ["Rotation_1: ", {"nbt":"Rotation","entity":"@s"}]

tp @s 0.0 0.0 0.0 0.0 -45.0
execute positioned 0.0 0.0 0.0 facing 0.0 1.0 0.0 run rotate @s ~ ~
tellraw @a ["Rotation_2: ", {"nbt":"Rotation","entity":"@s"}]

tp @s 0.0 0.0 0.0 0.0 45.0
execute positioned 0.0 0.0 0.0 facing 0.0 1.0 0.0 run rotate @s ~ ~
tellraw @a ["Rotation_3: ", {"nbt":"Rotation","entity":"@s"}]