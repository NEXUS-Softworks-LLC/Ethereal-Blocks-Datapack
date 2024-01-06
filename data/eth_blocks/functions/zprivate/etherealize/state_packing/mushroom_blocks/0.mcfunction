# set defaults
data modify storage eth_block:data BlockStates set value {east:"false", west:"false", north:"false", south:"false", up:"false", down:"false"}

execute if block ~ ~ ~ #eth_blocks:mushroom_blocks[east=true] run data modify storage eth_block:data BlockStates.east set value "true"
execute if block ~ ~ ~ #eth_blocks:mushroom_blocks[west=true] run data modify storage eth_block:data BlockStates.west set value "true"
execute if block ~ ~ ~ #eth_blocks:mushroom_blocks[north=true] run data modify storage eth_block:data BlockStates.north set value "true"
execute if block ~ ~ ~ #eth_blocks:mushroom_blocks[south=true] run data modify storage eth_block:data BlockStates.south set value "true"
execute if block ~ ~ ~ #eth_blocks:mushroom_blocks[up=true] run data modify storage eth_block:data BlockStates.up set value "true"
execute if block ~ ~ ~ #eth_blocks:mushroom_blocks[down=true] run data modify storage eth_block:data BlockStates.down set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/mushroom_blocks/1 with storage eth_block:data BlockStates