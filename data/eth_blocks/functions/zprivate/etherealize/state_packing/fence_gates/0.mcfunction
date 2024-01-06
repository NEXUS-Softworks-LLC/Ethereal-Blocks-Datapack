# set defaults
data modify storage eth_block:data BlockStates set value {facing:"north", in_wall:"false", open:"false"}

execute if block ~ ~ ~ #minecraft:fence_gates[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ #minecraft:fence_gates[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ #minecraft:fence_gates[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

execute if block ~ ~ ~ #minecraft:fence_gates[in_wall=true] run data modify storage eth_block:data BlockStates.in_wall set value "true"

execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run data modify storage eth_block:data BlockStates.open set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/fence_gates/1 with storage eth_block:data BlockStates