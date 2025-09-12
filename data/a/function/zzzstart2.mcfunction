execute at @r run spreadplayers ~ ~ 0 7 true @a
execute at @a run fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:glass
execute at @a run setblock ~ ~ ~ air
execute at @a run setblock ~ ~2 ~ minecraft:glass
execute at @a run setblock ~ ~-1 ~ command_block
execute at @a run setblock ~ ~-2 ~ dirt
execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"]}
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

function a:zzzd2bonus
execute as @e[type=armor_stand,tag=score,scores={bonus=1}] run tellraw @a [{"color":"gold","text":"you will be given "},{"color":"red","bold":true,"score":{"name":"@s","objective":"bonus"}},{"color":"gold","text":" bonus!"}]
execute as @e[type=armor_stand,tag=score,scores={bonus=2}] run tellraw @a [{"color":"gold","text":"you will be given "},{"color":"red","bold":true,"score":{"name":"@s","objective":"bonus"}},{"color":"gold","text":" bonuses!"}]
execute as @e[type=armor_stand,tag=score,scores={bonus=3..4}] run tellraw @a [{"color":"gold","text":"you will be given "},{"color":"yellow","bold":true,"score":{"name":"@s","objective":"bonus"}},{"color":"gold","text":" bonuses!"}]
execute as @e[type=armor_stand,tag=score,scores={bonus=5..6}] run tellraw @a [{"color":"gold","text":"you will be given "},{"color":"green","bold":true,"score":{"name":"@s","objective":"bonus"}},{"color":"gold","text":" bonuses!"}]
execute as @e[type=armor_stand,tag=score,scores={bonus=7..}] run tellraw @a [{"color":"gold","text":"you will be given "},{"color":"blue","bold":true,"score":{"name":"@s","objective":"bonus"}},{"color":"gold","text":" bonuses!"}]
execute as @e[type=armor_stand,tag=score,scores={bonus=0}] run tellraw @a [{"color":"red","text":"you will "},{"bold":true,"text":"NOT"},{"text":" be given a bonus :(."}]
execute as @e[type=armor_stand,tag=score,scores={bonus=1..}] run schedule function a:zzzbonus 10t
execute unless entity @e[type=armor_stand,tag=score,scores={bonus=1..}] run schedule function a:zzzstart3 10t