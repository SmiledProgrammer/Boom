################################################
# Projekt: Boom                                #
# Autor: Szinton                               #
# Funkcja: Zarządza grą (update co 50 ticków). #
################################################

schedule function boom:game/play50t 50t

# Efekty
effect give @a minecraft:night_vision 999999 255 true
effect give @a minecraft:saturation 999999 255 true

# Teleportacja spectator'ów na aktualną mapę
execute at @e[type=minecraft:area_effect_cloud,tag=centrumMapy,limit=1] run tp @a[distance=250..] ~ ~ ~

# Update bossbar'a czasu gry
bossbar set minecraft:czas_gry players @a

# Wyłączenie dźwięku systemu anty-kamperskiego dla spectatorów
scoreboard players set @a[gamemode=spectator] licznikAFK 0