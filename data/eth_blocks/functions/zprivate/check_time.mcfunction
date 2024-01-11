execute store result score @s eth_block.time run data get entity @s Time
execute if score @s eth_block.time matches 0.. run data modify entity @s Time set value -100000