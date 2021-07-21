######################################
# Projekt: Boom                      #
# Autor: Szinton                     #
# Funkcja: Zarządza śmiercią gracza. #
######################################

# Odejmowanie życia
scoreboard players remove @s zycia 1

# Resetowanie systemu anty-kamperskiego dla umierającego gracza
scoreboard players set @s licznikAFK 0

# Dodawania pomocniczego taga potrzebnego do identyfikacji umarłego gracza (przydatne w funkcji "boom:game/get_spawn_spot")
tag @s add smierc

# Usuwanie power up'a niewidzialności
execute as @s[tag=niewidzialny] run function boom:powerup/remove_invisibility

# Zrespawnowanie gracza
execute if score @s zycia matches 1.. run function boom:game/death/respawn

# Zarządzenie śmiercią gracza na dobre
execute if score @s zycia matches 0 run function boom:game/death/permanent