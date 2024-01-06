execute if block ~ ~ ~ minecraft:respawn_anchor[charges=0] run data modify storage eth_block:data BlockStates.charges set value "0"
execute if block ~ ~ ~ minecraft:respawn_anchor[charges=1] run data modify storage eth_block:data BlockStates.charges set value "1"
execute if block ~ ~ ~ minecraft:respawn_anchor[charges=2] run data modify storage eth_block:data BlockStates.charges set value "2"
execute if block ~ ~ ~ minecraft:respawn_anchor[charges=3] run data modify storage eth_block:data BlockStates.charges set value "3"
execute if block ~ ~ ~ minecraft:respawn_anchor[charges=4] run data modify storage eth_block:data BlockStates.charges set value "4"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/respawn_anchor/1 with storage eth_block:data BlockStates