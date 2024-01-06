execute if block ~ ~ ~ #eth_blocks:only_has_state/lit[lit=false] run data modify storage eth_block:data BlockStates.lit set value "false"
execute if block ~ ~ ~ #eth_blocks:only_has_state/lit[lit=true] run data modify storage eth_block:data BlockStates.lit set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/only_lit/1 with storage eth_block:data BlockStates