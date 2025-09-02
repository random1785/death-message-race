# make trigger for forefit
gamemode spectator @a[scores={zzzforefit=1..},tag=!a]
execute as @a[scores={zzzforefit=1..},tag=!a] run tellraw @a [{"selector":"@s","color":"dark_red"},{"text":" has forfeited."}]
execute if entity @a[scores={zzzforefit=1..},tag=!a] run execute as @a at @s run playsound minecraft:block.pointed_dripstone.land
execute as @a[scores={zzzforefit=1..},tag=!a] run execute unless entity @a[gamemode=survival,scores={done=..2,score=1..}] run schedule function a:zzzfinalprint 1s
tag @a[scores={zzzforefit=1..},tag=!a] add a

execute as @a[scores={mode=1}] run scoreboard players set Time mode 1
execute as @a[scores={mode=2}] run scoreboard players set Time mode 2
execute as @a[scores={mode=3}] run scoreboard players set Time mode 3
execute as @a[scores={mode=..-1}] run tellraw @s {"color":"dark_red","text":"That is not a valid mode value! As a reminder, 1 is a game to 50, 2 is a game to 75, and 3 is a game to 100!"}
execute as @a[scores={mode=1}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 50 points!"}
execute as @a[scores={mode=2}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 75 points!"}
execute as @a[scores={mode=3}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 100 points!"}
execute as @a[scores={mode=4..}] run tellraw @s {"color":"dark_red","text":"That is not a valid mode value! As a reminder, 1 is a game to 50, 2 is a game to 75, and 3 is a game to 100!"}


scoreboard players reset @a zzzforefit
scoreboard players enable @a zzzforefit
scoreboard players reset @a mode
execute positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] mode



# when a player finishes
execute as @a[scores={death=18..},gamemode=survival] run function a:zzzdeathcheck

execute as @a[scores={done=3..},tag=!a] at @s run playsound minecraft:ui.toast.challenge_complete
execute as @a[scores={done=3..},tag=!a] run scoreboard players add @e[type=armor_stand,tag=score] place 1


# 	placement points
execute as @e[type=armor_stand,tag=score,scores={place=1}] run execute as @a[scores={done=3..},tag=!a] run tellraw @a [{"color":"aqua","bold":true,"selector":"@s"},{"bold":false,"text":" has finished in 1st place!"}]
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=3}] run execute as @a[scores={done=3..},tag=!a] run scoreboard players set Time min 5
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=3}] run execute as @a[scores={done=3..},tag=!a] run tellraw @a {"text":"Players now have 5 minutes to try and finish before the game ends!","color":"dark_green","bold":true}
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=2}] run execute as @a[scores={done=3..},tag=!a] run scoreboard players set Time min 4
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=2}] run execute as @a[scores={done=3..},tag=!a] run tellraw @a {"text":"Players now have 4 minutes to try and finish before the game ends!","color":"dark_green","bold":true}
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=1}] run execute as @a[scores={done=3..},tag=!a] run scoreboard players set Time min 3
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=1}] run execute as @a[scores={done=3..},tag=!a] run tellraw @a {"text":"Players now have 3 minutes to try and finish before the game ends!","color":"dark_green","bold":true}
execute as @e[type=armor_stand,tag=score,scores={place=1}] run execute as @a[scores={done=3..},tag=!a] run scoreboard players set @e[tag=score,type=armor_stand] cd 1

execute as @e[type=armor_stand,tag=score,scores={place=2}] run execute as @a[scores={done=3..},tag=!a] run tellraw @a [{"color":"aqua","bold":true,"selector":"@s"},{"bold":false,"text":" has finished in 2nd place!"}]

execute as @e[type=armor_stand,tag=score,scores={place=3}] run execute as @a[scores={done=3..},tag=!a] run tellraw @a [{"color":"aqua","bold":true,"selector":"@s"},{"bold":false,"text":" has finished in 3rd place!"}]
execute as @e[type=armor_stand,tag=score,scores={place=3}] run execute as @a[scores={done=3..},tag=!a] run schedule function a:zzzfinalprint 1s

# 	rest of the stuff
gamemode spectator @a[scores={done=3..},tag=!a]
tag @a[scores={done=3..},tag=!a] add a
execute as @a[scores={done=3}] run execute unless entity @a[gamemode=survival,scores={done=..2,score=1..}] run schedule function a:zzzfinalprint 1s
execute as @a[scores={done=3}] run scoreboard players set @s done 4

# make ending screen
#execute as @e[tag=score,scores={ex=1,scoretick=10000..10010}] run function a:zzzend1
#execute as @e[tag=score,scores={ex=2,scoretick=7000..7010}] run function a:zzzend2
#execute as @e[tag=score,scores={ex=3,scoretick=4000..4010}] run function a:zzzend3
#execute as @e[tag=score,scores={ex=5,scoretick=2000..2010}] run function a:zzzend5


# seed check
execute positioned 12.79 308.35 0.70 as @a[distance=..30] run function a:zzzseedcheck


schedule function a:zzzquartersec 2t

