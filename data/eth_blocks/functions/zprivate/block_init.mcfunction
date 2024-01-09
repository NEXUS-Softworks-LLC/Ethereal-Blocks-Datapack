scoreboard players set @s eth_block.age 0
execute store result score @s eth_block.max_age run data get entity @s TileEntityData.EtherealBlockMaxAge

tag @s remove EtherealBlock.new