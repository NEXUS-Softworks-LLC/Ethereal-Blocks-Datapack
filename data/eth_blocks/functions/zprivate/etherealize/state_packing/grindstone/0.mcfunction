# set defaults
data modify storage eth_block:data BlockStates set value {face:"wall", facing:"north"}

execute if block ~ ~ ~ minecraft:grindstone[face=floor] run data modify storage eth_block:data BlockStates.face set value "floor"
execute if block ~ ~ ~ minecraft:grindstone[face=ceiling] run data modify storage eth_block:data BlockStates.face set value "ceiling"

execute if block ~ ~ ~ minecraft:grindstone[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ minecraft:grindstone[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ minecraft:grindstone[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/grindstone/1 with storage eth_block:data BlockStates