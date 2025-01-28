#math:damp/_print
# 输出阻尼迭代数据

tellraw @a ["math:damp{ x, v: ", {"score":{"name":"damp_x","objective":"int"}}, ", ", {"score":{"name":"damp_v","objective":"int"}}, "}"]