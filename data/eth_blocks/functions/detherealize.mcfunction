#> Unpack data from ethereal block

data modify storage eth_block:data BlockID set from entity @s BlockState.Name
data modify storage eth_block:data BlockData set from entity @s TileEntityData.EtherealBlockData
data modify storage eth_block:data BlockStateString set from entity @s TileEntityData.EtherealBlockStateString

#> Set block using data
execute at @s run function eth_blocks:zprivate/detherealize/set_block with storage eth_block:data

#> Set score
scoreboard players set @s eth_block.block_set 1