#math:_arcsin
# 计算反正弦
# 输入<sin,int>
# 输出<cos,int>
# 输出<theta,int>, [-900000, 900000]
# 需要以世界实体为执行者

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation sqrt int = sin int
scoreboard players operation sqrt int *= sqrt int
scoreboard players operation sqrt int *= -1 int
scoreboard players add sqrt int 100000000
function math:sqrt/_self
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation cos int = sqrt int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet run rotate @s ~ 0.0
execute store result score theta int run data get entity @s Rotation[0] -10000
scoreboard players operation theta int %= 3600000 int
execute if score theta int matches 1800001.. run scoreboard players remove theta int 3600000