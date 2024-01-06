# set defaults
data modify storage eth_block:data BlockStates set value {candles:"1", lit:"false", waterlogged:"false"}

execute if block ~ ~ ~ minecraft:candle[candles=2] run data modify storage eth_block:data BlockStates.candles set value "2"
execute if block ~ ~ ~ minecraft:candle[candles=3] run data modify storage eth_block:data BlockStates.candles set value "3"
execute if block ~ ~ ~ minecraft:candle[candles=4] run data modify storage eth_block:data BlockStates.candles set value "4"

execute if block ~ ~ ~ minecraft:candle[lit=true] run data modify storage eth_block:data BlockStates.lit set value "true"

execute if block ~ ~ ~ minecraft:candle[waterlogged=true] run data modify storage eth_block:data BlockStates.waterlogged set value "true"

# set the block state string for detherealization
function eth_blocks:zprivate/etherealize/state_packing/candles/1 with storage eth_block:data BlockStates