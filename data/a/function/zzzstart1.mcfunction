title @a times 10 40 10
scoreboard players set @a lobby 0
scoreboard players set @a death 17
scoreboard players set @e[type=armor_stand,tag=score] round 1
scoreboard players set @e[type=armor_stand,tag=score] bonus 0
scoreboard players operation @e[type=armor_stand,tag=score,limit=1] mode = Time mode 
scoreboard players add @a mode 0
gamemode survival @a
spreadplayers 0 0 0 400000 true @a
effect give @a minecraft:mining_fatigue 30 254 true
effect give @a resistance 30 254 true
schedule function a:zzzstart2 60t


execute store result score @e[type=armor_stand,tag=score,scores={mode=1..2}] bonus run random value 0..4
execute store result score @e[type=armor_stand,tag=score,scores={mode=3..6}] bonus run random value 0..5
execute store result score @e[type=armor_stand,tag=score,scores={mode=7..12}] bonus run random value 0..6
execute store result score @e[type=armor_stand,tag=score,scores={mode=13..}] bonus run random value 1..7