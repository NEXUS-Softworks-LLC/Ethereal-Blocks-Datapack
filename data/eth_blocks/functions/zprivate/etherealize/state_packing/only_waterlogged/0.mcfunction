execute if block ~ ~ ~ #eth_blocks:only_has_state/waterlogged[waterlogged=false] run data modify storage eth_block:data BlockStates.facing set value "false"
execute if block ~ ~ ~ #eth_blocks:only_has_state/waterlogged[waterlogged=true] run data modify storage eth_block:data BlockStates.facing set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/walls/1 with storage eth_block:data BlockStates