execute if block ~ ~ ~ #eth_blocks:only_has_state/axis[axis=y] run data modify storage eth_block:data BlockStates.axis set value "y"
execute if block ~ ~ ~ #eth_blocks:only_has_state/axis[axis=x] run data modify storage eth_block:data BlockStates.axis set value "x"
execute if block ~ ~ ~ #eth_blocks:only_has_state/axis[axis=z] run data modify storage eth_block:data BlockStates.axis set value "z"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/only_axis/1 with storage eth_block:data BlockStates