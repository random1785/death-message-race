tellraw @a {"color":"dark_red","bold":false,"text":"Restarting round..."}
scoreboard players set @e[type=minecraft:armor_stand,tag=score] scoretick 1
tp @a 0 302 0
schedule function a:zzzscorecalc1 20t
scoreboard players remove Round rounds 1
scoreboard players remove @e[type=armor_stand,tag=score,limit=1] rounds 1
scoreboard players operation Round d1 = @e[type=armor_stand,tag=score,limit=1] d1
scoreboard players operation Round d2 = @e[type=armor_stand,tag=score,limit=1] d2
scoreboard players operation Round d3 = @e[type=armor_stand,tag=score,limit=1] d3
scoreboard players operation Round d4 = @e[type=armor_stand,tag=score,limit=1] d4
scoreboard players operation Round ta = @e[type=armor_stand,tag=score,limit=1] ta
scoreboard players operation Round tb = @e[type=armor_stand,tag=score,limit=1] tb
scoreboard players operation Round ti = @e[type=armor_stand,tag=score,limit=1] ti