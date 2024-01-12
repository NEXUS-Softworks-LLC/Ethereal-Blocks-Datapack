scoreboard players set @s eth_block.age 0
execute store result score @s eth_block.max_age run scoreboard players get maximumAge eth_block.config

# use custom event function if one is present
execute if data entity @s TileEntityData.Ethereal.CustomEvents.BlockInit run function eth_blocks:zprivate/custom_events/init with entity @s TileEntityData.Ethereal.CustomEvents

tag @s remove EtherealBlock.new