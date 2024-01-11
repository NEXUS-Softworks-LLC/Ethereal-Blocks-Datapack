scoreboard players set @s eth_block.age 0
execute store result score @s eth_block.max_age run scoreboard players get maximumAge eth_block.config

tag @s remove EtherealBlock.new