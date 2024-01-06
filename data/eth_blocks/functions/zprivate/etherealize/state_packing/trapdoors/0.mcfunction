# set defaults
data modify storage eth_block:data BlockStates set value {facing:"north", half:"bottom", open:"false", waterlogged:"false"}

execute if block ~ ~ ~ #minecraft:trapdoors[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ #minecraft:trapdoors[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ #minecraft:trapdoors[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

execute if block ~ ~ ~ #minecraft:trapdoors[half=top] run data modify storage eth_block:data BlockStates.half set value "top"

execute if block ~ ~ ~ #minecraft:trapdoors[open=true] run data modify storage eth_block:data BlockStates.open set value "true"

execute if block ~ ~ ~ #minecraft:trapdoors[waterlogged=true] run data modify storage eth_block:data BlockStates.waterlogged set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/trapdoors/1 with storage eth_block:data BlockStates