########################################
# Projekt: Boom                        #
# Autor: Szinton                       #
# Funkcja: Respi nowy power up w grze. #
########################################

# Usuwanie istniejących power up'ów
kill @e[type=minecraft:armor_stand,tag=powerup]

# Spawnowanie power up'a na losowej pozycji
execute at @e[type=minecraft:area_effect_cloud,tag=powerup,sort=random,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["powerup"],Small:1b,Invisible:1b,Marker:1b,CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b}],CustomName:"{\"text\":\"POWER UP\",\"color\":\"gold\",\"bold\":\"true\"}"}

# Wiadomość o pojawieniu się power up'a
tellraw @a {"text":"","color":"aqua","extra":[{"text":"[POWER UP] ","color":"gold","bold":"true"},{"text":"A new "},{"text":"Power Up","color":"yellow","bold":"true"},{"text":" has just spawned on the map!"}]}

# Dźwięk pojawienia się power up'a
execute at @e[type=minecraft:armor_stand,tag=powerup,sort=random,limit=1] run playsound minecraft:block.anvil.land master @a ~ ~ ~ 10 1.0 1.0