title @a times 10 40 10
scoreboard players set @a lobby 0
scoreboard players set @a death 17
scoreboard players set @e[type=armor_stand,tag=score] round 1
scoreboard players set @e[type=armor_stand,tag=score] scoretick -300
scoreboard players operation @e[type=armor_stand,tag=score,limit=1] mode = Time mode 
scoreboard players add @a mode 0
gamemode survival @a
spreadplayers 0 0 0 400000 true @a
effect give @a minecraft:mining_fatigue 15 255 true
effect give @a resistance 15 255 true
schedule function a:zzzstart2 60t

