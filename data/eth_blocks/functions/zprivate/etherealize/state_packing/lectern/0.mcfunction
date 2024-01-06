# book is not displayed for whatever reason

# set defaults
data modify storage eth_block:data BlockStates set value {facing:"north", has_book:"false"}

execute if block ~ ~ ~ minecraft:lectern[facing=east] run data modify storage eth_block:data BlockStates.facing set value "east"
execute if block ~ ~ ~ minecraft:lectern[facing=west] run data modify storage eth_block:data BlockStates.facing set value "west"
execute if block ~ ~ ~ minecraft:lectern[facing=south] run data modify storage eth_block:data BlockStates.facing set value "south"

execute if block ~ ~ ~ minecraft:lectern[has_book=true] run data modify storage eth_block:data BlockStates.has_book set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/lectern/1 with storage eth_block:data BlockStates