#######################################
# Projekt: Boom                       #
# Autor: Szinton                      #
# Funkcja: Daje power up graczowi @s. #
#######################################

# Usuwanie power up'a
kill @e[type=minecraft:armor_stand,tag=powerup,sort=nearest,limit=1]

# Dźwięk zebrania power up'a
playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.2 2.0

# Utworzenie zmiennej "powerup" na tablicy "spawn" o wartości losowej
execute if score maxBomby ustawienia matches ..8 store result score powerup spawn run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=spawn,sort=random,limit=1,scores={spawn=..4}] spawn

execute if score maxBomby ustawienia matches 9.. store result score powerup spawn run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=spawn,sort=random,limit=1,scores={spawn=..3}] spawn

# Power Up: Niewidzialność
execute if score powerup spawn matches 0 run function boom:powerup/get/invisibility
# Power Up: Miecz Nieskończoności
execute if score powerup spawn matches 1 run function boom:powerup/get/sword
# Power Up: 2 Ender Perły
execute if score powerup spawn matches 2 run function boom:powerup/get/pearls
# Power Up: 5 Bomb Długodystansowych
execute if score powerup spawn matches 3 run function boom:powerup/get/crossbow
# Power Up: 40 Bomb
execute if score powerup spawn matches 4 run function boom:powerup/get/bombs

# Restartowanie wylosowanego power up'a
scoreboard players set powerup spawn -1

# Zrespienie kolejnego power up'a po 16 sekundach
schedule function boom:powerup/spawn 16s