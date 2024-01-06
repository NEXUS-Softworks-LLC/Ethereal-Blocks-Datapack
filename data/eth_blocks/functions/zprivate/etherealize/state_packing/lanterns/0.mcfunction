# set defaults
data modify storage eth_block:data BlockStates set value {hanging:"false", waterlogged:"false"}

execute if block ~ ~ ~ #eth_blocks:lanterns[hanging=true] run data modify storage eth_block:data BlockStates.hanging set value "true"

execute if block ~ ~ ~ #eth_blocks:lanterns[waterlogged=true] run data modify storage eth_block:data BlockStates.waterlogged set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/lanterns/1 with storage eth_block:data BlockStates