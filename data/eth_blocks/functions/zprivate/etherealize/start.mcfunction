#> Clear previously stored block data
data merge storage eth_block:data {BlockID:"minecraft:chest", BlockStateString:"[]"}
data modify storage eth_block:data BlockData set value {}
data modify storage eth_block:data BlockStates set value {}

#> Put block item equivalent of block at position in forceloaded chest
loot replace block 0 -64 0 inventory.0 mine ~ ~ ~ diamond_pickaxe{Enchantments:[{id:"silk_touch",lvl:2}],display:{Name:'{"text":"Copy State"}'}}

#> Put namespaced id of item from chest into storage
data modify storage eth_block:data BlockID set from block 0 -64 0 Items[0].id

#> Put any data the block has into storage
data modify storage eth_block:data BlockData set from block ~ ~ ~

#> Put any block states the block has into storage and parse the BlockStateString
execute if block ~ ~ ~ #eth_blocks:has_states run function eth_blocks:zprivate/etherealize/state_block_layering/l3i0

#> Create ethereal block using stored data
function eth_blocks:zprivate/etherealize/create_falling_block with storage eth_block:data

#> Reset custom events in storage
data modify storage eth_block:data CustomEvents set value {}