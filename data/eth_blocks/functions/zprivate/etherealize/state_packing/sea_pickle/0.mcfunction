# set defaults
data modify storage eth_block:data BlockStates set value {pickles:"1", waterlogged:"false"}

execute if block ~ ~ ~ minecraft:sea_pickle[pickles=2] run data modify storage eth_block:data BlockStates.pickles set value "2"
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=3] run data modify storage eth_block:data BlockStates.pickles set value "3"
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=4] run data modify storage eth_block:data BlockStates.pickles set value "4"

execute if block ~ ~ ~ minecraft:sea_pickle[waterlogged=true] run data modify storage eth_block:data BlockStates.waterlogged set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/sea_pickle/1 with storage eth_block:data BlockStates