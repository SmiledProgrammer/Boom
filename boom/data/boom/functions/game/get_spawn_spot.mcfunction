####################################################################
# Projekt: Boom                                                    #
# Autor: Szinton                                                   #
# Funkcja: Rekurencyjna; szuka spawn'u, na którym                  #
# 		   nikt się ostatnio nie zrespił i teleportuje tam gracza. #
####################################################################

# Resetowanie czasu życia
scoreboard players set @s czasZycia 0

# Wyłączanie bomb na chwilę po spawnie
clear @s minecraft:lingering_potion

# Oznaczenie niebiezpiecznych spawnów (gracz w pobliżu)
execute as @e[type=minecraft:area_effect_cloud,tag=spawn] at @s positioned ~-8 ~-50 ~-8 if entity @a[dx=17,dz=17,dy=400] run tag @s add dangerousSpawn

# Oznaczenie spawna, gdzie gracz się ostatnio zrespił
execute at @s as @e[type=minecraft:area_effect_cloud,tag=spawn] if score @s spawn = @p[tag=wgrze] spawn run tag @s add dangerousSpawn

# Zmienna pomocnicza
scoreboard players set spawnpointID spawn -1

# Losowanie bezpiecznego i niezajętego punktu spawnu
execute if entity @e[type=minecraft:area_effect_cloud,tag=spawn,tag=!dangerousSpawn] as @e[type=minecraft:area_effect_cloud,tag=spawn,tag=!dangerousSpawn,limit=1,sort=random] store result score spawnpointID spawn run scoreboard players get @s spawn

# Losowanie niebezpiecznego punktu spawnu, jeśli nie ma innych
execute if score spawnpointID spawn matches -1 if entity @e[type=minecraft:area_effect_cloud,tag=spawn] as @e[type=minecraft:area_effect_cloud,tag=spawn,limit=1,sort=random] store result score spawnpointID spawn run scoreboard players get @s spawn

# Teleportowanie gracza do punktu spawna o tym numerze
scoreboard players operation @s spawn = spawnpointID spawn
execute at @s as @e[type=minecraft:area_effect_cloud,tag=spawn] if score @s spawn = @p[tag=smierc] spawn run tp @p[tag=smierc] @s

# Usunięcie tagów
tag @s remove smierc
tag @e[type=minecraft:area_effect_cloud,tag=spawn] remove dangerousSpawn
tag @e[type=minecraft:area_effect_cloud,tag=spawn] remove occupiedSpawn