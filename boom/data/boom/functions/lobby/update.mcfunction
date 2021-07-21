##############################
# Projekt: Boom              #
# Autor: Szinton             #
# Funkcja: Update'uje lobby. #
##############################

# Machanie ręką armor standa
execute unless entity @a[tag=wgrze] run function boom:lobby/armorstand_waving

# Włączanie wszystkim triggera do klikania tabliczek
scoreboard players enable @a tabliczkaKlik

# Update tabliczek z ustawieniami (jeśli nie trwa gra lub odliczanie do gry)
execute unless score licznikStartu timerArmorStanda matches -2 run scoreboard players set @a tabliczkaKlik 0
execute if entity @a[scores={tabliczkaKlik=1..},limit=1] run function boom:lobby/evaluate_options

# Efekty
effect give @a minecraft:night_vision 999999 255 true
effect give @a minecraft:weakness 999999 255 true
effect give @a minecraft:saturation 999999 255 true

# Teleportowanie z przepaści
execute as @a[x=-100,dx=200,z=-100,dz=200,y=-40,dy=60] run function boom:lobby/fall_off
execute as @a[x=-1100,dx=200,z=-100,dz=200,y=-40,dy=60] run function boom:lobby/fall_off

# Dodawanie do zwykłej drużyny
team join zwykly @a[team=!niebiescy,team=!czerwoni]
execute if score tryb ustawienia matches 0 run team join zwykly @a

# Dodawanie do drużyn
execute if score tryb ustawienia matches 1 if score licznikStartu timerArmorStanda matches -2 run function boom:lobby/teams/update_join

# Wyłączenie dźwięku systemu anty-kamperskiego
scoreboard players set @a licznikAFK 0

# Update Parkour'a
function boom:lobby/parkour/update

# Policzenie graczy
execute store result score gracze ustawienia if entity @a

# Rozpoczęcie odliczania do startu gry
execute if block 0 66 14 minecraft:birch_button[powered=true] run function boom:game/start/check