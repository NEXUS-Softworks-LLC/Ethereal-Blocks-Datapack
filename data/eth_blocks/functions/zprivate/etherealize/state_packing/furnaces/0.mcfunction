# set defaults
data modify storage eth_block:data BlockStates set value {facing:"north", lit:"false"}

execute if block ~ ~ ~ #eth_blocks:furnaces[lit=true] run data modify storage eth_block:data BlockStates.lit set value "true"

execute if block ~ ~ ~ #eth_blocks:furnaces[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ #eth_blocks:furnaces[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ #eth_blocks:furnaces[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/furnaces/1 with storage eth_block:data BlockStates