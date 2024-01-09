# Ethereal Blocks Datapack

This datapack allows solid blocks to be made ethereal for a period of time, allowing players to pass through them.

To use, first run the command `/scoreboard players maximumAge eth_blocks.config [value]` to set the amount of time in ticks you would like the block to be transformed. (set to -1 or lower for infinite time)

Then run `/execute positioned <x> <y> <z> run function eth_blocks:etherealize` to make the block at the position ethereal.

When the ethereal block reaches it's maximum age, it will be returned to it's normal state, and will retain any data it had before it was transformed.

To manually return the nearest ethereal block to normal, run `/execute as @e[tag=EtherealBlock,sort=nearest,limit=1] run function eth_blocks:detherealize`

## Current Limitations

* There is a slight visual glitch when ethereal blocks return to normal

* Some container blocks, such as chests and shulkers, will turn invisible while ethereal

* Blocks that affect other blocks, such as door halves, beds, and cacti, cannot become ethereal

* Blocks that connect with each other, such as fences, glass panes, and walls, will not connect while ethereal