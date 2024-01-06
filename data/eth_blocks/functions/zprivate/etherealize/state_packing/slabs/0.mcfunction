# set defaults
data modify storage eth_block:data BlockStates set value {type:"bottom", waterlogged:"false"}

execute if block ~ ~ ~ #minecraft:slabs[type=top] run data modify storage eth_block:data BlockStates.type set value "top"
execute if block ~ ~ ~ #minecraft:slabs[type=double] run data modify storage eth_block:data BlockStates.type set value "double"

execute if block ~ ~ ~ #minecraft:slabs[waterlogged=true] run data modify storage eth_block:data BlockStates.waterlogged set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/slabs/1 with storage eth_block:data BlockStates