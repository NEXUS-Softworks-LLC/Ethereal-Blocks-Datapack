# set defaults
data modify storage eth_block:data BlockStates set value {facing:"north", half:"bottom", shape:"straight", waterlogged:"false"}

execute if block ~ ~ ~ #minecraft:stairs[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

execute if block ~ ~ ~ #minecraft:stairs[half=top] run data modify storage eth_block:data BlockStates.half set value "top"

execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run data modify storage eth_block:data BlockStates.shape set value "inner_left"
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run data modify storage eth_block:data BlockStates.shape set value "inner_right"
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run data modify storage eth_block:data BlockStates.shape set value "outer_left"
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run data modify storage eth_block:data BlockStates.shape set value "outer_right"

execute if block ~ ~ ~ #minecraft:stairs[waterlogged=true] run data modify storage eth_block:data BlockStates.waterlogged set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/stairs/1 with storage eth_block:data BlockStates