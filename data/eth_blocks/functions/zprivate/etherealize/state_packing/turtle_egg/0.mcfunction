# set defaults
data modify storage eth_block:data BlockStates set value {eggs:"1", hatch:"0"}

execute if block ~ ~ ~ minecraft:turtle_egg[eggs=2] run data modify storage eth_block:data BlockStates.eggs set value "2"
execute if block ~ ~ ~ minecraft:turtle_egg[eggs=3] run data modify storage eth_block:data BlockStates.eggs set value "3"
execute if block ~ ~ ~ minecraft:turtle_egg[eggs=4] run data modify storage eth_block:data BlockStates.eggs set value "4"

execute if block ~ ~ ~ minecraft:turtle_egg[hatch=1] run data modify storage eth_block:data BlockStates.hatch set value "1"
execute if block ~ ~ ~ minecraft:turtle_egg[hatch=2] run data modify storage eth_block:data BlockStates.hatch set value "2"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/turtle_egg/1 with storage eth_block:data BlockStates