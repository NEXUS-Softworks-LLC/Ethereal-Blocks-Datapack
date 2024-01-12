# Ethereal Blocks Datapack

This datapack allows solid blocks to be made ethereal for a period of time, allowing players to pass through them.

To use, first run the command `/scoreboard players maximumAge eth_blocks.config [value]` to set the amount of time in ticks you would like the block to be transformed. (set to -1 or lower for infinite time)

Then run `/execute positioned <x> <y> <z> run function eth_blocks:etherealize` to make the block at the position ethereal.

When the ethereal block reaches it's maximum age, it will be returned to it's normal state, and will retain any data it had before it was transformed.

To manually return the nearest ethereal block to it's normal state, run `/execute as @e[type=falling_block,tag=EtherealBlock,sort=nearest,limit=1] run function eth_blocks:detherealize`

If the ethereal block happens to be moved in any way, or has it's position filled by a block somehow, it will destroy itself and drop it's block item, along with any container contents.

## Custom Block Behavior

If you wish to use ethereal blocks within your own datapack, but require some altered behavior from the blocks themselves, you can create custom functions that will run whenever the ethereal block triggers a certain event.

To do this, simply give the path of your custom event function to the storage location for the respective event, directly before etherealizing a block.

For example,
```mcfunction
data modify storage eth_block:data CustomEvents.BlockTick set value "custom:event/function"
scoreboard players set maximumAge eth_blocks.config 1500
execute positioned ~ ~-1 ~ run function eth_blocks:etherealize
```

This will cause the resulting ethereal block entity to run the function `custom:event/function` as/at itself every time it ticks. An error will be displayed if the function cannot be found.

To add/modify a custom event on an existing ethereal block entity, you can run the following command:
```mcfunction
execute as @e[type=falling_block,tag=EtherealBlock,sort=nearest,limit=1] run data modify entity @s TileEntityData.Ethereal.CustomEvents.<event> set value "function:path"
```

#### Here is a list of the available events :
- `BlockTick` triggers when the block ticks
- `BlockInit` triggers directly after the block is etherealized
- `BlockDeth` triggers directly before the block is detherealized
- `BlockDest` triggers directly before the block is destroyed

Only one function can be hooked into each event at a time per entity.

## Current Limitations

* There is a slight visual glitch when ethereal blocks return to normal

* Some container blocks, such as chests and shulkers, will turn invisible while ethereal

* Blocks that are linked to other blocks, such as door halves, beds, and cacti, cannot become ethereal

* Blocks that connect with each other, such as fences, glass panes, and walls, will not connect with their ethereal counterpart