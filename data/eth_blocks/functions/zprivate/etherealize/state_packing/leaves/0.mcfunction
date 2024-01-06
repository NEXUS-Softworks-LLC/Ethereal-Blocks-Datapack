# set defaults
data modify storage eth_block:data BlockStates set value {persistent:"false", waterlogged:"false"}

execute if block ~ ~ ~ #minecraft:leaves[persistent=true] run data modify storage eth_block:data BlockStates.persistent set value "true"

execute if block ~ ~ ~ #minecraft:leaves[waterlogged=true] run data modify storage eth_block:data BlockStates.waterlogged set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/leaves/1 with storage eth_block:data BlockStates