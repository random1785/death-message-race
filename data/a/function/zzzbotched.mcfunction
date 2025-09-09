tellraw @a {"color":"dark_red","bold":false,"text":"Restarting round..."}
scoreboard players set @e[type=minecraft:armor_stand,tag=score] scoretick 1
tp @a 0 302 0
schedule function a:main 2s