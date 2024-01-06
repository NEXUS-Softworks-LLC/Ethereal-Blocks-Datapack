scoreboard players set @s eth_block.age 0
execute store result score @s eth_block.max_age run data get entity @s TileEntityData.EtherealBlockMaxAge
scoreboard players set @s eth_block.block_set 0
scoreboard players set @s eth_block.block_set_wait 0

tag @s add EtherealBlock.init