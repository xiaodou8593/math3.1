#math:ifloat/_mult_by_kfloat
# 计算浮点数乘法
# 输入乘数kfloat

#低位
scoreboard players operation sstemp0 int = ifloat_int0 int
scoreboard players operation sstemp0 int *= kfloat_int1 int
scoreboard players operation sstemp1 int = ifloat_int1 int
scoreboard players operation sstemp1 int *= kfloat_int1 int
scoreboard players operation sstemp1 int /= 10000 int
scoreboard players operation ifloat_int1 int *= kfloat_int0 int
scoreboard players operation ifloat_int1 int += sstemp0 int
scoreboard players operation ifloat_int1 int += sstemp1 int

#高位
scoreboard players operation ifloat_int0 int *= kfloat_int0 int
scoreboard players operation ifloat_int0 int *= 10 int
scoreboard players operation ifloat_int1 int /= 1000 int
scoreboard players operation ifloat_int0 int += ifloat_int1 int

#符号位
scoreboard players operation ifloat_sign int *= kfloat_sign int
#指数位
scoreboard players operation ifloat_exp int += kfloat_exp int
scoreboard players remove ifloat_exp int 1
#小数位对齐
execute if score ifloat_int0 int matches 100000000.. run function math:ifloat/mult_align

scoreboard players operation ifloat_int1 int = ifloat_int0 int
scoreboard players operation ifloat_int0 int /= 10000 int
scoreboard players operation ifloat_int1 int %= 10000 int