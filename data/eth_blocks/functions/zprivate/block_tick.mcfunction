# destroy block and drop it's item if motion is detected
execute unless data entity @s {Motion:[0.0d,0.0d,0.0d]} run function eth_blocks:zprivate/destroy_block with entity @s BlockState

# increment age score
scoreboard players operation @s eth_block.age += 1 eth_block.age

# reset time if almost 600 so falling block stays alive
execute store result score @s eth_block.time run data get entity @s Time
execute if score @s eth_block.time matches 550.. run data modify entity @s Time set value -20000

# detherealize if maximum age is reached, unless it is -1 or lower
execute unless score @s eth_block.max_age matches ..-1 if score @s eth_block.age >= @s eth_block.max_age run function eth_blocks:detherealize