execute as @e[type=armor_stand,tag=score,scores={mode=1}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 10 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=2}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 20 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=3}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 30 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=4}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 40 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=5}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 50 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=6}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 60 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=7}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 70 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=8}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 80 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=9}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 90 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=10}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 100 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=11}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 110 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=12}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 120 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=13}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 130 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=14}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 140 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=15}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 150 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=16}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 160 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=17}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 170 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=18}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 180 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=19}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 190 points or more!"}
execute as @e[type=armor_stand,tag=score,scores={mode=20}] run tellraw @a {"bold":true,"color":"gold","text":"Acquire different death messages to get 200 points or more!"}
execute as @e[type=armor_stand,tag=score] run tellraw @a {"color":"yellow","text":"You can see the point values for each death you haven't yet done with /trigger unique (hover your mouse over the death messages for a tutorial on how to get them!) and what you have already completed with /trigger repeat!"}

scoreboard players set @e[type=armor_stand,tag=score] scoretick -220

effect clear @a mining_fatigue
effect clear @a resistance

tag @e[type=armor_stand,tag=score] remove k

effect give @a minecraft:mining_fatigue 11 254 true
effect give @a resistance 11 254 true

schedule function a:zzzadvdelay 20s