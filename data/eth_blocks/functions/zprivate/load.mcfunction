scoreboard objectives add eth_block.time dummy
scoreboard objectives add eth_block.age dummy
scoreboard objectives add eth_block.max_age dummy
scoreboard players set 1 eth_block.age 1
scoreboard objectives add eth_block.block_set dummy
scoreboard objectives add eth_block.config dummy
scoreboard players set maximumAge eth_block.config 1000

# create forceloaded chest
execute in minecraft:overworld run forceload add 0 0
setblock 0 -64 0 chest
setblock 0 -63 0 bedrock