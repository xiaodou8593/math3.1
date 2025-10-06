#math:test/iter_command
# math:test/_iter_command调用

data modify storage math:io test_command set from storage math:io test_commands[0]
function math:test/_run_command with storage math:io {}

data modify storage math:io test_commands append from storage math:io test_commands[0]
data remove storage math:io test_commands[0]
scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:test/iter_command