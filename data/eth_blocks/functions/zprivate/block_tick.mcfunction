# count falling blocks at current block
execute align xyz positioned ~.5 ~ ~.5 store result score @s eth_block.count run execute if entity @e[type=minecraft:falling_block,distance=...5]

# destroy block and drop it's item if any of the following: 
    # motion is detected
    # more than one falling block entity at current position
    # block at current position is not air
execute if predicate eth_blocks:block_tampered run function eth_blocks:zprivate/destroy_block with entity @s BlockState

# increment age score
scoreboard players operation @s eth_block.age += 1 eth_block.age

# use custom event function if one is present
execute if data entity @s TileEntityData.Ethereal.CustomEvents.BlockTick run function eth_blocks:zprivate/custom_events/tick with entity @s TileEntityData.Ethereal.CustomEvents

# detherealize if maximum age is reached, unless it is -1 or lower
execute unless score @s eth_block.max_age matches ..-1 if score @s eth_block.age >= @s eth_block.max_age run function eth_blocks:detherealize