# check ethereal blocks for high time values and reset if they are too high
execute as @e[type=falling_block,tag=EtherealBlock] run function eth_blocks:zprivate/check_time

schedule function eth_blocks:zprivate/main_100t 100t