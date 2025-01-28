#math:damp/_energy
# 获取阻尼运动停止的能量阈值
# 输出<res,int>

scoreboard players operation res int = damp_f int
scoreboard players operation sstemp_b int = res int
scoreboard players operation res int /= 10000 int
scoreboard players operation sstemp_a int = res int
scoreboard players operation res int *= res int
scoreboard players operation res int *= 20000 int

scoreboard players operation sstemp_a int *= sstemp_b int
scoreboard players operation sstemp_a int *= 4 int
scoreboard players operation res int += sstemp_a int

scoreboard players operation sstemp_b int *= sstemp_b int
scoreboard players operation sstemp_b int /= 5000 int
scoreboard players operation res int += sstemp_b int