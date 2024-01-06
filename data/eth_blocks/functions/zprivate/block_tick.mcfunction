# initialize scores if unset
execute as @s[tag=!EtherealBlock.init] run function eth_blocks:zprivate/block_init

# increment age score
scoreboard players operation @s eth_block.age += 1 eth_block.age

# reset time if almost 600
execute store result score @s eth_block.time run data get entity @s Time
execute if score @s eth_block.time matches 550.. run data modify entity @s Time set value 1

# kill self the tick after block is set
execute if score @s eth_block.block_set matches 1 run kill @s

# detherealize if maximum age is reached, unless it is -1 or lower
execute unless score @s eth_block.block_set matches 1 if score @s eth_block.age >= @s eth_block.max_age unless score @s eth_block.max_age matches ..-1 run function eth_blocks:detherealize