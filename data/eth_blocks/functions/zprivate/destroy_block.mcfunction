# use custom event function if one is present
execute if data entity @s TileEntityData.Ethereal.CustomEvents.BlockDest run function eth_blocks:zprivate/custom_events/dest with entity @s TileEntityData.Ethereal.CustomEvents

# if container, drop contained items
execute if data entity @s TileEntityData.Ethereal.BlockData.Items[0] run function eth_blocks:zprivate/drop_container_items/0

# summon block item
$summon minecraft:item ~ ~ ~ {Item:{id:"$(Name)",Count:1b}}

kill @s