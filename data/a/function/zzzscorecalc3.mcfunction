execute as @a at @s run playsound minecraft:entity.generic.explode
execute as @a run scoreboard players operation @s score += @s calc
scoreboard players reset @a calc
scoreboard players reset @a[tag=a] scoretick
execute as @a[scores={score=-1500..-1}] run tellraw @a [{"text":"Unfortunately, "},{"selector":"@s"},{"text":"'s score cannot be a nonpositive integer."}]
execute as @a[scores={score=-1500..-1}] run scoreboard players set @s score 1
execute as @a[scores={score=1..}] run tellraw @a [{"color":"aqua","selector":"@s"},{"text":"'s score is now "},{"score":{"name":"@s","objective":"score"}},{"text":"!"}]
# execute store result score @e[type=minecraft:armor_stand,limit=1,tag=score] left run execute if entity @a[scores={score=0..}]
# execute as @e[type=minecraft:armor_stand,limit=1,tag=score] run scoreboard players operation @s right = @s left
# scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=score] right 1
# execute unless score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches ..1 run schedule function a:zzzstart 3s
# scoreboard players set @a[scores={score=..-1}] gone 1


execute unless score @e[type=minecraft:armor_stand,limit=1,tag=score] rounds matches 10.. run schedule function a:zzzstart 3s
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] rounds matches 10.. run schedule function a:zzzfinal 2s
# final is where the winner is announced
# execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches 1 run title @a title [{"color":"gold","selector":"@a[scores={score=0..}]"},{"text":" is the winner!"}]
# execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches 1 run tellraw @a [{"color":"gold","selector":"@a[scores={score=0..}]"},{"text":" is the winner!"}]
# execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches 1 run execute at @a run playsound minecraft:ui.toast.challenge_complete master @a

execute as @a run scoreboard players operation @s temp = @s score
scoreboard objectives remove score
scoreboard objectives add score dummy
execute as @a run scoreboard players operation @s score = @s temp
scoreboard players reset * temp
scoreboard objectives setdisplay sidebar score

scoreboard players reset @a glass