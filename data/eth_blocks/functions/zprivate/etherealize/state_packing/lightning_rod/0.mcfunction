# set defaults
data modify storage eth_block:data BlockStates set value {facing:"up", waterlogged:"false"}

execute if block ~ ~ ~ minecraft:lightning_rod[facing=down] run data modify storage eth_block:data BlockStates.facing set value "down"
execute if block ~ ~ ~ minecraft:lightning_rod[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ minecraft:lightning_rod[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ minecraft:lightning_rod[facing=north] run data modify storage eth_block:data BlockStates.facing set value "north"
execute if block ~ ~ ~ minecraft:lightning_rod[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

execute if block ~ ~ ~ minecraft:lightning_rod[waterlogged=true] run data modify storage eth_block:data BlockStates.facing set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/lightning_rod/1 with storage eth_block:data BlockStates