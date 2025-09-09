scoreboard players set @e[type=minecraft:armor_stand,tag=score] scoretick 1
tp @a 0 302 0
execute as @a[scores={glass=1..}] run tellraw @a [{"color":"red","bold":true,"selector":"@s"},{"bold":false,"text":" broke glass! Please do not try this again."}]
scoreboard players set @a glass 0
tellraw @a {"color":"dark_red","bold":false,"text":"Restarting round..."}
schedule function a:main 2s