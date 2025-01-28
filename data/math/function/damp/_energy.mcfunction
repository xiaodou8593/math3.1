#math:damp/_energy
# 获取阻尼能量
# 输出<res,int>

# 计算x^2
scoreboard players operation sstemp_x int = damp_x int
scoreboard players operation sstemp_b int = sstemp_x int
scoreboard players operation sstemp_x int /= 10000 int
scoreboard players operation sstemp_b int %= 10000 int
scoreboard players operation sstemp_a int = sstemp_x int
scoreboard players operation sstemp_x int *= sstemp_x int
scoreboard players operation sstemp_x int *= 10000 int
scoreboard players operation sstemp_a int *= sstemp_b int
scoreboard players operation sstemp_a int *= 2 int
scoreboard players operation sstemp_x int += sstemp_a int
scoreboard players operation sstemp_b int *= sstemp_b int
scoreboard players operation sstemp_b int /= 10000 int
scoreboard players operation sstemp_x int += sstemp_b int

# 计算v^2
scoreboard players operation res int = damp_v int
scoreboard players operation sstemp_b int = res int
scoreboard players operation res int /= 10000 int
scoreboard players operation sstemp_b int %= 10000 int
scoreboard players operation sstemp_a int = res int
scoreboard players operation res int *= res int
scoreboard players operation res int *= 10000 int
scoreboard players operation sstemp_a int *= sstemp_b int
scoreboard players operation sstemp_a int *= 2 int
scoreboard players operation res int += sstemp_a int
scoreboard players operation sstemp_b int *= sstemp_b int
scoreboard players operation sstemp_b int /= 10000 int
scoreboard players operation res int += sstemp_b int

scoreboard players operation res int += sstemp_x int