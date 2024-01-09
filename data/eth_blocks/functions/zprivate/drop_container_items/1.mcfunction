# Drop Item
$summon minecraft:item ~ ~ ~ {Item:$(CurrentItem)}

# Get next item
execute store success score #success eth_block.config run data modify storage eth_block:data ContainerDrops.CurrentItem set from storage eth_block:data ContainerDrops.Items[0]
execute if score #success eth_block.config matches 1 run data remove storage eth_block:data ContainerDrops.Items[0]

# If next item was found, loop again
execute if score #success eth_block.config matches 1 run function eth_blocks:zprivate/drop_container_items/1 with storage eth_block:data ContainerDrops