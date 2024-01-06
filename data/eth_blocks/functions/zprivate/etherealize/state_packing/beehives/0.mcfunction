# set defaults
data modify storage eth_block:data BlockStates set value {facing:"north", honey_level:"0"}

execute if block ~ ~ ~ #eth_blocks:beehives[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ #eth_blocks:beehives[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ #eth_blocks:beehives[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

execute if block ~ ~ ~ #eth_blocks:beehives[honey_level=1] run data modify storage eth_block:data BlockStates.honey_level set value "1"
execute if block ~ ~ ~ #eth_blocks:beehives[honey_level=2] run data modify storage eth_block:data BlockStates.honey_level set value "2"
execute if block ~ ~ ~ #eth_blocks:beehives[honey_level=3] run data modify storage eth_block:data BlockStates.honey_level set value "3"
execute if block ~ ~ ~ #eth_blocks:beehives[honey_level=4] run data modify storage eth_block:data BlockStates.honey_level set value "4"
execute if block ~ ~ ~ #eth_blocks:beehives[honey_level=5] run data modify storage eth_block:data BlockStates.honey_level set value "5"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/beehives/1 with storage eth_block:data BlockStates