#math:test/item_simulation/_init
# 初始化掉落物旋转模块

# 加载世界实体
forceload add -1 -1 1 1
summon marker 0 0 0 {UUID:[I;0,0,0,0], Tags:["math_marker"], CustomName:'"math_marker"'}

# 建立记分板
scoreboard objectives add int dummy
scoreboard objectives add timer dummy
scoreboard objectives add quat_phi dummy

# 整数常量
scoreboard players set 3600000 int 3600000

# NBT缓存
data modify storage math:io xyz set value [0.0d,0.0d,0.0d]
data modify storage math:io translation set value [0.0f,0.0f,0.0f]
data modify storage math:io xyzw set value [0.0f,0.0f,0.0f,0.0f]

# 常量设置
scoreboard players set item_simulation_t int 30
scoreboard players set item_simulation_omega int 900000
scoreboard players set item_simulation_a int 1500