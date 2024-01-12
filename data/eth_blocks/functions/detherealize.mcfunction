# use custom event function if one is present
execute if data entity @s TileEntityData.Ethereal.CustomEvents.BlockDeth at @s run function eth_blocks:zprivate/custom_events/deth with entity @s TileEntityData.Ethereal.CustomEvents

#> Set block using falling block's data
execute at @s run function eth_blocks:zprivate/detherealize/set_block with entity @s TileEntityData.Ethereal