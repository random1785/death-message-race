execute store result score @e[type=armor_stand,tag=score] k run random value 1..26
execute as @e[type=armor_stand,tag=score] run scoreboard players remove @s bonus 1
execute as @a at @s run playsound minecraft:block.note_block.pling
execute as @e[type=armor_stand,tag=score,scores={k=1}] run tellraw @a {"color":"dark_green","text":"bonus recieved: bamboo!"}
execute as @e[type=armor_stand,tag=score,scores={k=1}] run give @a bamboo
execute as @e[type=armor_stand,tag=score,scores={k=2}] run tellraw @a {"color":"dark_green","text":"bonus recieved: sweet berries!"}
execute as @e[type=armor_stand,tag=score,scores={k=2}] run give @a sweet_berries
execute as @e[type=armor_stand,tag=score,scores={k=3}] run tellraw @a {"color":"dark_green","text":"bonus recieved: vines!"}
execute as @e[type=armor_stand,tag=score,scores={k=3}] run give @a vine
execute as @e[type=armor_stand,tag=score,scores={k=4}] run tellraw @a {"color":"dark_green","text":"bonus recieved: cactus!"}
execute as @e[type=armor_stand,tag=score,scores={k=4}] run give @a cactus
execute as @e[type=armor_stand,tag=score,scores={k=5}] run tellraw @a {"color":"gray","text":"bonus recieved: lava bucket!"}
execute as @e[type=armor_stand,tag=score,scores={k=5}] run give @a lava_bucket
execute as @e[type=armor_stand,tag=score,scores={k=6}] run tellraw @a {"color":"gray","text":"bonus recieved: water bucket!"}
execute as @e[type=armor_stand,tag=score,scores={k=6}] run give @a water_bucket
execute as @e[type=armor_stand,tag=score,scores={k=7}] run tellraw @a {"color":"gray","text":"bonus recieved: bucket of powdered snow!"}
execute as @e[type=armor_stand,tag=score,scores={k=7}] run give @a powder_snow_bucket
execute as @e[type=armor_stand,tag=score,scores={k=8}] run tellraw @a {"color":"blue","text":"bonus recieved: witch spawn egg!"}
execute as @e[type=armor_stand,tag=score,scores={k=8}] run give @a witch_spawn_egg
execute as @e[type=armor_stand,tag=score,scores={k=9}] run tellraw @a {"color":"blue","text":"bonus recieved: guardian spawn egg!"}
execute as @e[type=armor_stand,tag=score,scores={k=9}] run give @a guardian_spawn_egg
execute as @e[type=armor_stand,tag=score,scores={k=10}] run tellraw @a {"color":"blue","text":"bonus recieved: trident drowned spawn egg!"}
execute as @e[type=armor_stand,tag=score,scores={k=10}] run give @a drowned_spawn_egg[entity_data={id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident",count:1}}}] 1
execute as @e[type=armor_stand,tag=score,scores={k=11}] run tellraw @a {"color":"blue","text":"bonus recieved: bee spawn egg!"}
execute as @e[type=armor_stand,tag=score,scores={k=11}] run give @a bee_spawn_egg
execute as @e[type=armor_stand,tag=score,scores={k=12}] run tellraw @a {"color":"green","text":"bonus recieved: shears!"}
execute as @e[type=armor_stand,tag=score,scores={k=12}] run give @a shears[minecraft:unbreakable={true:1b},minecraft:enchantment_glint_override=true]
execute as @e[type=armor_stand,tag=score,scores={k=13}] run tellraw @a {"color":"green","text":"bonus recieved: iron block!"}
execute as @e[type=armor_stand,tag=score,scores={k=13}] run give @a iron_block
execute as @e[type=armor_stand,tag=score,scores={k=14}] run tellraw @a {"color":"green","text":"bonus recieved: redstone block!"}
execute as @e[type=armor_stand,tag=score,scores={k=14}] run give @a redstone_block
execute as @e[type=armor_stand,tag=score,scores={k=15}] run tellraw @a {"color":"green","text":"bonus recieved: wood!"}
execute as @e[type=armor_stand,tag=score,scores={k=15}] run give @a oak_log 16
execute as @e[type=armor_stand,tag=score,scores={k=16}] run tellraw @a {"color":"green","text":"bonus recieved: cobblestone!"}
execute as @e[type=armor_stand,tag=score,scores={k=16}] run give @a cobblestone 32
execute as @e[type=armor_stand,tag=score,scores={k=17}] run tellraw @a {"color":"green","text":"bonus recieved: gravel!"}
execute as @e[type=armor_stand,tag=score,scores={k=17}] run give @a gravel 32
execute as @e[type=armor_stand,tag=score,scores={k=18}] run tellraw @a {"color":"green","text":"bonus recieved: sand!"}
execute as @e[type=armor_stand,tag=score,scores={k=18}] run give @a sand 32
execute as @e[type=armor_stand,tag=score,scores={k=19}] run tellraw @a {"color":"green","text":"bonus recieved: food!"}
execute as @e[type=armor_stand,tag=score,scores={k=19}] run give @a golden_carrot 16
execute as @e[type=armor_stand,tag=score,scores={k=20}] run tellraw @a {"color":"green","text":"bonus recieved: pearls!"}
execute as @e[type=armor_stand,tag=score,scores={k=20}] run give @a ender_pearl 3
execute as @e[type=armor_stand,tag=score,scores={k=21}] run tellraw @a {"color":"green","text":"bonus recieved: string!"}
execute as @e[type=armor_stand,tag=score,scores={k=21}] run give @a string 8
execute as @e[type=armor_stand,tag=score,scores={k=22}] run tellraw @a {"color":"green","text":"bonus recieved: gunpowder!"}
execute as @e[type=armor_stand,tag=score,scores={k=22}] run give @a gunpowder 4
execute as @e[type=armor_stand,tag=score,scores={k=23}] run tellraw @a {"color":"green","text":"bonus recieved: looting sword!"}
execute as @e[type=armor_stand,tag=score,scores={k=23}] run give @a golden_sword[minecraft:enchantments={looting:2}]
execute as @e[type=armor_stand,tag=score,scores={k=24}] run tellraw @a {"color":"green","text":"bonus recieved: fast pickaxe!"}
execute as @e[type=armor_stand,tag=score,scores={k=24}] run give @a golden_pickaxe[minecraft:enchantments={efficiency:5}]
execute as @e[type=armor_stand,tag=score,scores={k=25}] run tellraw @a {"color":"green","text":"bonus recieved: fast axe!"}
execute as @e[type=armor_stand,tag=score,scores={k=25}] run give @a golden_axe[minecraft:enchantments={efficiency:5}]
execute as @e[type=armor_stand,tag=score,scores={k=26}] run tellraw @a {"color":"green","text":"bonus recieved: fast shovel!"}
execute as @e[type=armor_stand,tag=score,scores={k=26}] run give @a golden_shovel[minecraft:enchantments={efficiency:5}]

execute as @e[type=armor_stand,tag=score,scores={bonus=1..}] run schedule function a:zzzbonus 20t
execute as @e[type=armor_stand,tag=score,scores={bonus=..0}] run schedule function a:zzzstart3 40t