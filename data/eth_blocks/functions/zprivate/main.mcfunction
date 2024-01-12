# tick ethereal block entities
execute as @e[type=falling_block,tag=EtherealBlock] at @s run function eth_blocks:zprivate/block_tick with entity @s TileEntityData.Ethereal.CustomEvents