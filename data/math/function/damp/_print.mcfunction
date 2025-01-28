#math:damp/_print
# 输出阻尼迭代数据

tellraw @a "math:damp{"
tellraw @a ["    k, b, f: ", {"score":{"name":"damp_k","objective":"int"}}, ", ", {"score":{"name":"damp_b","objective":"int"}}, ", ", {"score":{"name":"damp_f","objective":"int"}}]
tellraw @a ["    x, v: ", {"score":{"name":"damp_x","objective":"int"}}, ", ", {"score":{"name":"damp_v","objective":"int"}}]
tellraw @a "}"