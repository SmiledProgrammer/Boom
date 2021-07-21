################################################
# Projekt: Boom                                #
# Autor: Szinton                               #
# Funkcja: Zarządza grą (update co 10 ticków). #
################################################

schedule function boom:game/play10t 10t

# Dźwięk ostrzeżenia AFK
execute as @a[tag=wgrze] if score @s licznikAFK matches ..-2 at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

# Update itemów w ekwipunku
execute as @a[tag=wgrze] run function boom:game/inventory/stick/check
execute as @a[tag=wgrze] run function boom:game/inventory/arrow/check
execute if score luk ustawienia matches 1 as @a[tag=wgrze] run function boom:game/inventory/bow/check

# Update braku odrzutu po śmierci
execute as @a[tag=wgrze,tag=brakOdrzutu] if score @s czasZycia matches 60.. run function boom:game/death/no_knockback_reset

# Zabijanie w lawie
execute as @a[tag=wgrze] at @s if block ~ ~ ~ minecraft:lava run function boom:game/death/death

# Zabijanie strzał w ziemi
kill @e[type=minecraft:arrow,nbt={inGround:1b}]

# Efekt odporności
effect give @a[tag=wgrze] minecraft:resistance 999999 255 true

# Sprawdzanie czyjegoś zwycięstwa
execute if score tryb ustawienia matches 0 run function boom:game/check_win_ffa
execute if score tryb ustawienia matches 1 run function boom:game/check_win_teams