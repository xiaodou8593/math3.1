#math:damp/_iter
# 阻尼迭代

scoreboard players operation damp_x int += damp_v int

scoreboard players operation damp_v int *= damp_k int
scoreboard players operation damp_v int /= damp_b int

scoreboard players set sstemp_sign int 1
execute if score damp_x int > 0 int run scoreboard players set sstemp_sign int -1
scoreboard players operation sstemp_sign int *= damp_f int

scoreboard players operation damp_v int += sstemp_sign int