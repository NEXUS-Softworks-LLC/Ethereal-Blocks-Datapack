$execute store success score #success eth_block.config run function $(BlockTick)
execute if score #success eth_block.config matches 0 run tellraw @a[gamemode=creative] ["",{"text":"[","color":"gold"},{"text":" Ethereal Blocks ","color":"#FCD303"},{"text":"] ","color":"gold"},{"text":"Tick Event : Unknown Function","color":"red"}]