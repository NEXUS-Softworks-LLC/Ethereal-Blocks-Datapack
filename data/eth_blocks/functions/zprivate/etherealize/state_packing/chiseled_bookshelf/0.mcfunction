# set defaults
data modify storage eth_block:data BlockStates set value {facing:"north", slot_0_occupied:"false", slot_1_occupied:"false", slot_2_occupied:"false", slot_3_occupied:"false", slot_4_occupied:"false", slot_5_occupied:"false"}

execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

execute if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_0_occupied=true] run data modify storage eth_block:data BlockStates.slot_0_occupied set value "true"
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_1_occupied=true] run data modify storage eth_block:data BlockStates.slot_1_occupied set value "true"
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_2_occupied=true] run data modify storage eth_block:data BlockStates.slot_2_occupied set value "true"
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_3_occupied=true] run data modify storage eth_block:data BlockStates.slot_3_occupied set value "true"
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_4_occupied=true] run data modify storage eth_block:data BlockStates.slot_4_occupied set value "true"
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_5_occupied=true] run data modify storage eth_block:data BlockStates.slot_5_occupied set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/chiseled_bookshelf/1 with storage eth_block:data BlockStates