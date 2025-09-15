execute as @a[scores={done=3},tag=!a] run scoreboard players operation @s min = @s scoretick
execute as @a[scores={done=3},tag=!a] run scoreboard players operation @s sec = @s scoretick
execute as @a[scores={done=3},tag=!a] run scoreboard players set @s scoretick 1200
execute as @a[scores={done=3},tag=!a] run scoreboard players operation @s min /= @s scoretick
execute as @a[scores={done=3},tag=!a] run scoreboard players operation @s sec %= @s scoretick
execute as @a[scores={done=3},tag=!a] run scoreboard players set @s scoretick 20
execute as @a[scores={done=3},tag=!a] run scoreboard players operation @s sec /= @s scoretick