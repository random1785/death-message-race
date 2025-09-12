execute store result score @e[type=armor_stand,tag=score] l run random value 1..4
execute as @e[type=armor_stand,tag=score,scores={l=1}] run tellraw @a [{"color":"gold","text":"type of tool given: "},{"bold":true,"text":"stone!","color":"dark_gray"}]
execute as @e[type=armor_stand,tag=score,scores={l=1}] run give @a stone_axe
execute as @e[type=armor_stand,tag=score,scores={l=1}] run give @a stone_pickaxe
execute as @e[type=armor_stand,tag=score,scores={l=1}] run give @a stone_shovel
execute as @e[type=armor_stand,tag=score,scores={l=1}] run give @a stone_sword

execute as @e[type=armor_stand,tag=score,scores={l=2}] run tellraw @a [{"color":"gold","text":"type of tool given: "},{"bold":true,"text":"iron!","color":"gray"}]
execute as @e[type=armor_stand,tag=score,scores={l=2}] run give @a iron_axe
execute as @e[type=armor_stand,tag=score,scores={l=2}] run give @a iron_pickaxe
execute as @e[type=armor_stand,tag=score,scores={l=2}] run give @a iron_shovel
execute as @e[type=armor_stand,tag=score,scores={l=2}] run give @a iron_sword

execute as @e[type=armor_stand,tag=score,scores={l=3}] run tellraw @a [{"color":"gold","text":"type of tool given: "},{"bold":true,"text":"diamond!","color":"aqua"}]
execute as @e[type=armor_stand,tag=score,scores={l=3}] run give @a diamond_axe
execute as @e[type=armor_stand,tag=score,scores={l=3}] run give @a diamond_pickaxe
execute as @e[type=armor_stand,tag=score,scores={l=3}] run give @a diamond_shovel
execute as @e[type=armor_stand,tag=score,scores={l=3}] run give @a diamond_sword

execute as @e[type=armor_stand,tag=score,scores={l=4}] run tellraw @a [{"color":"gold","text":"type of tool given: "},{"bold":true,"text":"netherite!","color":"dark_red"}]
execute as @e[type=armor_stand,tag=score,scores={l=4}] run give @a netherite_axe
execute as @e[type=armor_stand,tag=score,scores={l=4}] run give @a netherite_pickaxe
execute as @e[type=armor_stand,tag=score,scores={l=4}] run give @a netherite_shovel
execute as @e[type=armor_stand,tag=score,scores={l=4}] run give @a netherite_sword

execute as @e[type=armor_stand,tag=score] run scoreboard players reset @s l