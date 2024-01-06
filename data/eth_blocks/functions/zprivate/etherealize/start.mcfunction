#> Put block item equivalent of block at position in forceloaded chest
loot replace block 0 -64 0 inventory.0 mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}

#> Put namespaced id of item from chest into storage
data modify storage eth_block:data BlockID set from block 0 -64 0 Items[0].id

#> Put any data the block has into storage
data modify storage eth_block:data BlockData set value {}
data modify storage eth_block:data BlockData set from block ~ ~ ~

#> Put maximum age from config score into storage (to be changed to user's liking before etherealizing a block)
execute store result storage eth_block:data MaximumAge int 1 run scoreboard players get maximumAge eth_block.config

#> Get block states if block has states
data modify storage eth_block:data BlockStates set value {}
data modify storage eth_block:data BlockStateString set value "[]"
execute if block ~ ~ ~ #eth_blocks:has_states run function eth_blocks:zprivate/etherealize/state_block_layering/l3i0

#> Create ethereal block using stored data
function eth_blocks:zprivate/etherealize/create_falling_block with storage eth_block:data