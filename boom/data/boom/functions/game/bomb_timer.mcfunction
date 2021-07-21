##############################################
# Projekt: Boom                              #
# Autor: Szinton                             #
# Funkcja: Zarządza limitem i dawaniem bomb. #
##############################################

# Odejmowanie bomby, jeśli została wyrzucona
execute if score @s bomby matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:lingering_potion"}]}] run scoreboard players remove @s bomby 1

# Licznik bomb
execute if score @s bomby < maxBomby ustawienia run scoreboard players add @s licznikBomb 1

# Dodawanie bomby, jeśli czas upłynął
execute if score @s licznikBomb matches 20.. run scoreboard players add @s bomby 1

# Resetowanie licznika bomb, jeśli czas upłynął
execute if score @s licznikBomb matches 20.. run scoreboard players set @s licznikBomb 0

# Wyświetlanie liczby bomb
title @s actionbar {"text":"","color":"red","extra":[{"text":"["},{"score":{"name":"@s","objective":"bomby"}},{"text":"]"}]}