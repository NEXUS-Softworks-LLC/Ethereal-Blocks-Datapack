scoreboard objectives remove eth_block.time
scoreboard objectives remove eth_block.age
scoreboard objectives remove eth_block.max_age
scoreboard objectives remove eth_block.config

# remove forceloaded chest
execute in minecraft:overworld run forceload remove 0 0
setblock 0 -64 0 bedrock

data remove storage eth_block:data PackVersion