# set defaults
data modify storage eth_block:data BlockStates set value {facing:"north", attachment:"floor"}

execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run data modify storage eth_block:data BlockStates.facing set value "ceiling"
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall] run data modify storage eth_block:data BlockStates.facing set value "single_wall"
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] run data modify storage eth_block:data BlockStates.facing set value "double_wall"

execute if block ~ ~ ~ minecraft:bell[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ minecraft:bell[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ minecraft:bell[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/bell/1 with storage eth_block:data BlockStates