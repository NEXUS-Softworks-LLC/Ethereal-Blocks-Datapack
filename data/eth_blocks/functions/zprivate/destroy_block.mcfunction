# if container, drop contained items
execute if data entity @s TileEntityData.EtherealBlockData.Items[0] run function eth_blocks:zprivate/drop_container_items/0

# summon block item
$summon minecraft:item ~ ~ ~ {Item:{id:"$(Name)",Count:1b}}

kill @s