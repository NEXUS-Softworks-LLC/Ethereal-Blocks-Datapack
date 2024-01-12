# summon falling block
$execute align xyz run summon falling_block ~.5 ~ ~.5 {BlockState:{Name:"$(BlockID)",Properties:$(BlockStates)},Time:-100000,NoGravity:1,Tags:["EtherealBlock","EtherealBlock.new"],TileEntityData:{Ethereal:{BlockID:"$(BlockID)", BlockData:$(BlockData), BlockStateString:"$(BlockStateString)", CustomEvents:$(CustomEvents)}}}

# initialize scores for falling block
execute align xyz positioned ~.5 ~ .5 as @e[type=falling_block,tag=EtherealBlock.new,sort=nearest,limit=1] run function eth_blocks:zprivate/block_init

# remove solid block at position
execute align xyz run setblock ~ ~ ~ air