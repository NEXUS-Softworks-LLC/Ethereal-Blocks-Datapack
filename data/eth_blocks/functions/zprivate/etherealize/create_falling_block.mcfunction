$execute align xyz run summon falling_block ~.5 ~ ~.5 {BlockState:{Name:"$(BlockID)",Properties:$(BlockStates)},Time:1,NoGravity:1,Tags:["EtherealBlock"],TileEntityData:{EtherealBlockData:$(BlockData),EtherealBlockMaxAge:$(MaximumAge),EtherealBlockStateString:"$(BlockStateString)"}}

setblock ~ ~ ~ air