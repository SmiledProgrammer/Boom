##########################################################
# Projekt: Boom                                          #
# Autor: Szinton                                         #
# Funkcja: Zarządza wszystkim co dzieje się podczas gry. #
##########################################################

# Dodanie czasu życia
scoreboard players add @a[tag=wgrze] czasZycia 1

# Mechanika limitowania bomb, jeśli limit jest ustawiony
execute unless score maxBomby ustawienia matches 9 as @a[tag=wgrze] if score @s czasZycia matches 6.. run function boom:game/bomb_timer

# Mechanika bomb
execute as @e[type=minecraft:area_effect_cloud,tag=!notbomb] at @s run function boom:game/bomb

# Zabijanie w przepaści na każdej mapie
execute at @e[type=minecraft:area_effect_cloud,tag=rogPrzepasciMapy,limit=1] as @a[tag=wgrze,dx=400,dz=400,dy=60] run function boom:game/death/death

# Dawanie bomb
execute as @a[tag=wgrze] if score @s czasZycia matches 6.. run function boom:game/inventory/bomb/check

# Update power up'ów
function boom:powerup/update

# Ustawianie spectator'ów
gamemode spectator @a[tag=!wgrze]

# Efekt bomb długodystansowych
execute as @e[type=minecraft:arrow,nbt={inGround:1b,pickup:1b}] at @s run function boom:powerup/update_crossbow

# Teleportowanie w portalu na mapie Ender
execute if score mapa ustawienia matches 3 run function boom:map/ender/portal_update

# System anty-kamperski
execute if score antyAFK ustawienia matches 1.. run function boom:game/afk/update