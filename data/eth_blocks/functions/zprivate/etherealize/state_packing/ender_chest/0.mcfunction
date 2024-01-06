# set defaults
data modify storage eth_block:data BlockStates set value {facing:"north", waterlogged:"false"}

execute if block ~ ~ ~ minecraft:ender_chest[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ minecraft:ender_chest[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ minecraft:ender_chest[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

execute if block ~ ~ ~ minecraft:ender_chest[waterlogged=true] run data modify storage eth_block:data BlockStates.waterlogged set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/ender_chest/1 with storage eth_block:data BlockStates