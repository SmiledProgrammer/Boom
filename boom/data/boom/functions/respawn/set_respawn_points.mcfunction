#################################################################
# Projekt: Boom                                                 #
# Autor: Szinton                                                #
# Funkcja: Rekurencyjna. Tworzy kolejne spawn point'y na mapie. #
#################################################################

# Utworzenie spawn point'a na miejscu AEC, które nie ma jeszcze przydzielonego numeru spawnu (nie ma wyniku na tablicy "spawn")
execute as @e[type=minecraft:area_effect_cloud,tag=spawn,tag=!respawnSet,sort=random,limit=1] unless score @s spawn matches 0.. run function boom:respawn/set_respawn_point

# Zwiększanie indeksu następnego numeru spawnu
scoreboard players add respawnCounter spawn 1

# Powtórzenie funkcji, jeśli nadal są jeszcze spawn point'y bez przydzielonego numeru spawnu
execute if score respawnCounter spawn < liczbaSpawnow ustawienia run function boom:respawn/set_respawn_points