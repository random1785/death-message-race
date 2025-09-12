execute as @a at @s run playsound minecraft:block.vault.open_shutter ambient @s ~ ~ ~ 500
function a:zzzbonustools
give @a echo_shard[consumable={consume_seconds:1.6,animation:"brush",sound:"block.beacon.activate"},item_name={"bold":true,"color":"gold","text":"Spawnpoint Setter"},lore=[{"text":"Sets your spawn right here! Hold down for 1.6 seconds to use."}],enchantment_glint_override=true] 64