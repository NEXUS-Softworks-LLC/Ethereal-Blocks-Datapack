# set defaults
data modify storage eth_block:data BlockStates set value {facing:"north", type:"single", waterlogged:"false"}

execute if block ~ ~ ~ minecraft:chest[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ minecraft:chest[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ minecraft:chest[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

execute if block ~ ~ ~ minecraft:chest[type=left] run data modify storage eth_block:data BlockStates.type set value "left"
execute if block ~ ~ ~ minecraft:chest[type=right] run data modify storage eth_block:data BlockStates.type set value "right"

execute if block ~ ~ ~ minecraft:chest[waterlogged=true] run data modify storage eth_block:data BlockStates.waterlogged set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/chests/1 with storage eth_block:data BlockStates