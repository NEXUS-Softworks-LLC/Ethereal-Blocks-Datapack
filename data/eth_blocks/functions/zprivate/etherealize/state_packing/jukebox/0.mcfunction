
execute if block ~ ~ ~ minecraft:jukebox[has_record=false] run data modify storage eth_block:data BlockStates.has_record set value "false"
execute if block ~ ~ ~ minecraft:jukebox[has_record=true] run data modify storage eth_block:data BlockStates.has_record set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/jukebox/1 with storage eth_block:data BlockStates