# set defaults
data modify storage eth_block:data BlockStates set value {has_bottle_0:"false", has_bottle_1:"false", has_bottle_2:"false"}

execute if block ~ ~ ~ minecraft:brewing_stand[has_bottle_0=true] run data modify storage eth_block:data BlockStates.has_bottle_0 set value "true"
execute if block ~ ~ ~ minecraft:brewing_stand[has_bottle_1=true] run data modify storage eth_block:data BlockStates.has_bottle_1 set value "true"
execute if block ~ ~ ~ minecraft:brewing_stand[has_bottle_2=true] run data modify storage eth_block:data BlockStates.has_bottle_2 set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/brewing_stand/1 with storage eth_block:data BlockStates