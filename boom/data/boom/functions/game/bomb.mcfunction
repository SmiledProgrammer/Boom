#########################################
# Projekt: Boom                         #
# Autor: Szinton                        #
# Funkcja: Odpowiada za mechanikę bomb. #
#########################################

# Spawnowanie creeper'a na miejscu rozbitej potki
summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4}

# Zabijanie AEC bomby
kill @s