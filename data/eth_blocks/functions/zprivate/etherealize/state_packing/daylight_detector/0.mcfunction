execute if block ~ ~ ~ minecraft:daylight_detector[inverted=false] run data modify storage eth_block:data BlockStates.inverted set value "false"
execute if block ~ ~ ~ minecraft:daylight_detector[inverted=true] run data modify storage eth_block:data BlockStates.inverted set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/daylight_detector/1 with storage eth_block:data BlockStates