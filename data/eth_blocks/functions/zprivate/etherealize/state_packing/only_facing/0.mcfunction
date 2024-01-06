execute if block ~ ~ ~ #eth_blocks:only_has_state/facing[facing=up] run data modify storage eth_block:data BlockStates.facing set value "up"
execute if block ~ ~ ~ #eth_blocks:only_has_state/facing[facing=down] run data modify storage eth_block:data BlockStates.facing set value "down"
execute if block ~ ~ ~ #eth_blocks:only_has_state/facing[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ #eth_blocks:only_has_state/facing[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ #eth_blocks:only_has_state/facing[facing=north] run data modify storage eth_block:data BlockStates.facing set value "north"
execute if block ~ ~ ~ #eth_blocks:only_has_state/facing[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/only_facing/1 with storage eth_block:data BlockStates