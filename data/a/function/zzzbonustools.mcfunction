execute store result score @e[type=armor_stand,tag=score] l run random value 1..10
execute as @e[type=armor_stand,tag=score,scores={l=1..6}] run tellraw @a [{"color":"gold","text":"type of tool given: "},{"bold":true,"text":"stone!","color":"dark_gray"}]
execute as @e[type=armor_stand,tag=score,scores={l=1..6}] run give @a stone_axe[minecraft:unbreakable={true:1b}]
execute as @e[type=armor_stand,tag=score,scores={l=1..6}] run give @a stone_pickaxe[minecraft:unbreakable={true:1b}]
execute as @e[type=armor_stand,tag=score,scores={l=1..6}] run give @a stone_shovel[minecraft:unbreakable={true:1b}]
execute as @e[type=armor_stand,tag=score,scores={l=1..6}] run give @a stone_sword[minecraft:unbreakable={true:1b}]

execute as @e[type=armor_stand,tag=score,scores={l=7..9}] run tellraw @a [{"color":"gold","text":"type of tool given: "},{"bold":true,"text":"iron!","color":"gray"}]
execute as @e[type=armor_stand,tag=score,scores={l=7..9}] run give @a iron_axe[minecraft:unbreakable={true:1b},minecraft:enchantment_glint_override=true]
execute as @e[type=armor_stand,tag=score,scores={l=7..9}] run give @a iron_pickaxe[minecraft:unbreakable={true:1b},minecraft:enchantment_glint_override=true]
execute as @e[type=armor_stand,tag=score,scores={l=7..9}] run give @a iron_shovel[minecraft:unbreakable={true:1b},minecraft:enchantment_glint_override=true]
execute as @e[type=armor_stand,tag=score,scores={l=7..9}] run give @a iron_sword[minecraft:unbreakable={true:1b},minecraft:enchantment_glint_override=true]

execute as @e[type=armor_stand,tag=score,scores={l=10}] run tellraw @a [{"color":"gold","text":"type of tool given: "},{"bold":true,"text":"diamond!","color":"aqua"}]
execute as @e[type=armor_stand,tag=score,scores={l=10}] run give @a diamond_axe[minecraft:unbreakable={true:1b},minecraft:enchantment_glint_override=true]
execute as @e[type=armor_stand,tag=score,scores={l=10}] run give @a diamond_pickaxe[minecraft:unbreakable={true:1b},minecraft:enchantment_glint_override=true]
execute as @e[type=armor_stand,tag=score,scores={l=10}] run give @a diamond_shovel[minecraft:unbreakable={true:1b},minecraft:enchantment_glint_override=true]
execute as @e[type=armor_stand,tag=score,scores={l=10}] run give @a diamond_sword[minecraft:unbreakable={true:1b},minecraft:enchantment_glint_override=true]

execute as @e[type=armor_stand,tag=score] run scoreboard players reset @s l