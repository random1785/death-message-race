# make trigger for forefit
gamemode spectator @a[scores={zzzforefit=1..},tag=!a]
execute as @a[scores={zzzforefit=1..},tag=!a] run tellraw @a [{"selector":"@s","color":"dark_red"},{"text":" has forfeited."}]
execute if entity @a[scores={zzzforefit=1..},tag=!a] run execute as @a at @s run playsound minecraft:block.pointed_dripstone.land
execute as @a[scores={zzzforefit=1..},tag=!a] run execute unless entity @a[gamemode=survival,scores={score=0..}] run schedule function a:zzzfinalprint 1s
tag @a[scores={zzzforefit=1..},tag=!a] add a

execute as @a[scores={mode=..-1}] run tellraw @s {"color":"dark_red","text":"That is not a valid mode value! As a reminder, the mode value times 10 is the target score for the game!"}
execute as @a[scores={mode=1}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 10 points!"}
execute as @a[scores={mode=2}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 20 points!"}
execute as @a[scores={mode=3}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 30 points!"}
execute as @a[scores={mode=4}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 40 points!"}
execute as @a[scores={mode=5}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 50 points!"}
execute as @a[scores={mode=6}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 60 points!"}
execute as @a[scores={mode=7}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 70 points!"}
execute as @a[scores={mode=8}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 80 points!"}
execute as @a[scores={mode=9}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 90 points!"}
execute as @a[scores={mode=10}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 100 points!"}
execute as @a[scores={mode=11}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 110 points!"}
execute as @a[scores={mode=12}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 120 points!"}
execute as @a[scores={mode=13}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 130 points!"}
execute as @a[scores={mode=14}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 140 points!"}
execute as @a[scores={mode=15}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 150 points!"}
execute as @a[scores={mode=16}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 160 points!"}
execute as @a[scores={mode=17}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 170 points!"}
execute as @a[scores={mode=18}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 180 points!"}
execute as @a[scores={mode=19}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 190 points!"}
execute as @a[scores={mode=20}] run tellraw @a {"color":"dark_green","text":"The game has been set to a game to 200 points!"}
execute as @a[scores={mode=21..}] run tellraw @s {"color":"dark_red","text":"That is not a valid mode value! As a reminder, the mode value times 10 is the target score for the game!"}


scoreboard players reset @a zzzforefit
scoreboard players enable @a zzzforefit



# when a player finishes
execute as @a[scores={death=18..},gamemode=survival] run function a:zzzdeathcheck

execute as @e[type=armor_stand,tag=score,scores={mode=1}] run execute as @a[scores={score=10..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=2}] run execute as @a[scores={score=20..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=3}] run execute as @a[scores={score=30..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=4}] run execute as @a[scores={score=40..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=5}] run execute as @a[scores={score=50..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=6}] run execute as @a[scores={score=60..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=7}] run execute as @a[scores={score=70..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=8}] run execute as @a[scores={score=80..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=9}] run execute as @a[scores={score=90..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=10}] run execute as @a[scores={score=100..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=11}] run execute as @a[scores={score=110..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=12}] run execute as @a[scores={score=120..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=13}] run execute as @a[scores={score=130..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=14}] run execute as @a[scores={score=140..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=15}] run execute as @a[scores={score=150..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=16}] run execute as @a[scores={score=160..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=17}] run execute as @a[scores={score=170..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=18}] run execute as @a[scores={score=180..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=19}] run execute as @a[scores={score=190..}] run scoreboard players set @s done 3
execute as @e[type=armor_stand,tag=score,scores={mode=20}] run execute as @a[scores={score=200..}] run scoreboard players set @s done 3

execute as @a[scores={done=3},tag=!a] at @s run playsound minecraft:ui.toast.challenge_complete
execute as @a[scores={done=3},tag=!a] run scoreboard players operation @s scoretick = @e[limit=1,type=armor_stand,tag=score] scoretick
execute as @a[scores={done=3},tag=!a] run function a:zzztimecalc
execute as @a[scores={done=3},tag=!a] run scoreboard players add @e[type=armor_stand,tag=score] place 1
execute as @a[scores={done=3},tag=!a] run scoreboard players operation @s place = @e[limit=1,type=armor_stand,tag=score] place


# 	placement points
execute as @e[type=armor_stand,tag=score,scores={place=1}] run execute as @a[scores={done=3},tag=!a] run tellraw @a [{"color":"aqua","bold":true,"selector":"@s"},{"bold":false,"text":" has finished in 1st place in "},{"score":{"name":"@s","objective":"min"}},{"text":" minutes and "},{"score":{"name":"@s","objective":"sec"}},{"text":" seconds!"}]
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=16..}] run execute as @a[scores={done=3},tag=!a] run scoreboard players set Time min 15
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=13..15}] run execute as @a[scores={done=3},tag=!a] run scoreboard players set Time min 13
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=10..12}] run execute as @a[scores={done=3},tag=!a] run scoreboard players set Time min 10
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=8..9}] run execute as @a[scores={done=3},tag=!a] run scoreboard players set Time min 8
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=6..7}] run execute as @a[scores={done=3},tag=!a] run scoreboard players set Time min 7
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=4..5}] run execute as @a[scores={done=3},tag=!a] run scoreboard players set Time min 5
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=3}] run execute as @a[scores={done=3},tag=!a] run scoreboard players set Time min 3
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=2}] run execute as @a[scores={done=3},tag=!a] run scoreboard players set Time min 2
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=1}] run execute as @a[scores={done=3},tag=!a] run scoreboard players set Time min 1

execute as @e[type=armor_stand,tag=score,scores={place=1,mode=16..}] run execute as @a[scores={done=3},tag=!a] run tellraw @a [{"color":"dark_green","text":"Players now have "},{"text":"15","bold":true,"underlined":true},{"text":" minutes to try and finish before the game ends!"}]
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=13..15}] run execute as @a[scores={done=3},tag=!a] run tellraw @a [{"color":"dark_green","text":"Players now have "},{"text":"13","bold":true,"underlined":true},{"text":" minutes to try and finish before the game ends!"}]
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=10..12}] run execute as @a[scores={done=3},tag=!a] run tellraw @a [{"color":"dark_green","text":"Players now have "},{"text":"10","bold":true,"underlined":true},{"text":" minutes to try and finish before the game ends!"}]
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=8..9}] run execute as @a[scores={done=3},tag=!a] run tellraw @a [{"color":"dark_green","text":"Players now have "},{"text":"8","bold":true,"underlined":true},{"text":" minutes to try and finish before the game ends!"}]
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=6..7}] run execute as @a[scores={done=3},tag=!a] run tellraw @a [{"color":"dark_green","text":"Players now have "},{"text":"7","bold":true,"underlined":true},{"text":" minutes to try and finish before the game ends!"}]
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=4..5}] run execute as @a[scores={done=3},tag=!a] run tellraw @a [{"color":"dark_green","text":"Players now have "},{"text":"5","bold":true,"underlined":true},{"text":" minutes to try and finish before the game ends!"}]
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=3}] run execute as @a[scores={done=3},tag=!a] run tellraw @a [{"color":"dark_green","text":"Players now have "},{"text":"3","bold":true,"underlined":true},{"text":" minutes to try and finish before the game ends!"}]
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=2}] run execute as @a[scores={done=3},tag=!a] run tellraw @a [{"color":"dark_green","text":"Players now have "},{"text":"2","bold":true,"underlined":true},{"text":" minutes to try and finish before the game ends!"}]
execute as @e[type=armor_stand,tag=score,scores={place=1,mode=1}] run execute as @a[scores={done=3},tag=!a] run tellraw @a [{"color":"dark_green","text":"Players now have "},{"text":"1","bold":true,"underlined":true},{"text":" minute to try and finish before the game ends!"}]

execute as @e[type=armor_stand,tag=score,scores={place=1}] run execute as @a[scores={done=3},tag=!a] run scoreboard players set @e[tag=score,type=armor_stand] cd 1

execute as @e[type=armor_stand,tag=score,scores={place=2}] run execute as @a[scores={done=3},tag=!a] run tellraw @a [{"color":"aqua","bold":true,"selector":"@s"},{"bold":false,"text":" has finished in 2nd place in "},{"score":{"name":"@s","objective":"min"}},{"text":" minutes and "},{"score":{"name":"@s","objective":"sec"}},{"text":" seconds!"}]

execute as @e[type=armor_stand,tag=score,scores={place=3}] run execute as @a[scores={done=3},tag=!a] run tellraw @a [{"color":"aqua","bold":true,"selector":"@s"},{"bold":false,"text":" has finished in 3rd place in "},{"score":{"name":"@s","objective":"min"}},{"text":" minutes and "},{"score":{"name":"@s","objective":"sec"}},{"text":" seconds!"}]
execute as @e[type=armor_stand,tag=score,scores={place=3}] run execute as @a[scores={done=3},tag=!a] run schedule function a:zzzfinalprint 5s
execute as @e[type=armor_stand,tag=score,scores={place=3}] run scoreboard players set @s place 4

# 	rest of the stuff
gamemode spectator @a[scores={done=3},tag=!a]
tag @a[scores={done=3},tag=!a] add a
execute as @a[scores={done=3},tag=!whydoesthishappen] run execute unless entity @a[gamemode=survival,tag=!a] run schedule function a:zzzfinalprint 5s
execute as @a[scores={done=3}] run tag @s add whydoesthishappen
execute as @a[scores={done=3}] run scoreboard players add @s done 1

schedule function a:zzzquartersec 2t