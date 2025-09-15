gamemode spectator @a
tellraw @a {"text":"Thanks for playing Death Message Race! To start another game, run /reload and then /function a:start!","color":"light_purple"}
tellraw @a ""
execute as @a[scores={place=1}] run tellraw @a [{"text":"First place: ","color":"gold"},{"bold":true,"selector":"@s"}," (",{"score":{"name":"@s","objective":"min"}}," min ",{"score":{"name":"@s","objective":"sec"}}," sec)"]
execute as @a[scores={place=2}] run tellraw @a [{"text":"Second place: ","color":"gray"},{"bold":true,"selector":"@s"}," (",{"score":{"name":"@s","objective":"min"}}," min ",{"score":{"name":"@s","objective":"sec"}}," sec)"]
execute as @a[scores={place=3}] run tellraw @a [{"text":"Third place: ","color":"#CE8946"},{"bold":true,"selector":"@s"}," (",{"score":{"name":"@s","objective":"min"}}," min ",{"score":{"name":"@s","objective":"sec"}}," sec)"]

scoreboard players set Time min -1785