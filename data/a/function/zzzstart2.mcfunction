execute at @r run spreadplayers ~ ~ 0 7 true @a
execute at @a run fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:glass
execute at @a run setblock ~ ~ ~ air
execute at @a run setblock ~ ~2 ~ minecraft:glass
execute at @a run setblock ~ ~-1 ~ command_block
execute at @a run setblock ~ ~-2 ~ dirt
execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"]}
#execute store result storage rem t int 1 run scoreboard players get @n[type=minecraft:armor_stand,tag=score] t
#execute store result storage rem m int 1 run scoreboard players get @n[type=minecraft:armor_stand,tag=score] message
execute as @e[type=armor_stand,tag=score,scores={mode=1}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 50 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=2}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 75 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=3}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 100 points or more!"}
execute as @e[type=armor_stand,tag=score] run tellraw @a {"color":"yellow","text":"You can see the point values for each death you haven't yet done with /trigger unique and what you have already completed with /trigger repeat!"}
tag @a add bugs
tag @a remove one
tag @a remove two
clear @a
# gamemode spectator @a[scores={score=..-1}]
# tellraw @a[scores={score=..-1}] {"color":"dark_gray","text":"You've already been eliminated, but you can still spectate the chaos!"}
# tag @a[scores={score=..-1}] add a
xp set @a 0 levels
xp set @a 0 points
scoreboard players set @e[type=armor_stand,tag=score] place 0
scoreboard players reset @a place
scoreboard players set @e[type=armor_stand,tag=score] twok 2000