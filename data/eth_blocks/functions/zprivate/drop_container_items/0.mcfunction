# Get items list from container
data modify storage eth_block:data ContainerDrops.Items set from entity @s TileEntityData.EtherealBlockData.Items

# Get first item from the item list
data modify storage eth_block:data ContainerDrops.CurrentItem set from storage eth_block:data ContainerDrops.Items[0]
data remove storage eth_block:data ContainerDrops.Items[0]

# Start loop
function eth_blocks:zprivate/drop_container_items/1 with storage eth_block:data ContainerDrops