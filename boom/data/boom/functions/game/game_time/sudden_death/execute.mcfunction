#########################################
# Projekt: Boom                         #
# Autor: Szinton                        #
# Funkcja: Zrzuca bomby nagłej śmierci. #
#########################################

execute as @a[tag=wgrze] unless predicate boom:sneaking at @s run summon minecraft:potion ~ ~2 ~ {Tags:["suddenDeath"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:strong_healing"}}}

execute as @a[tag=wgrze] if predicate boom:sneaking at @s run summon minecraft:potion ~ ~1 ~ {Tags:["suddenDeath"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:strong_healing"}}}