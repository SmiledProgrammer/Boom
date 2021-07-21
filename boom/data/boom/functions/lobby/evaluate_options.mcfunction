#######################################################
# Projekt: Boom                                       #
# Autor: Szinton                                      #
# Funkcja: Zarządza zmienianiem ustawień gry w lobby. #
#######################################################

### Kody zmiany ustawień:
### 1, 2 - dzień OFF/ON
### 3, 4 - system Anty-Kamperski
### 5 - początkowa ilość żyć
### 6, 7 - tryb gry
### 8 - maksymalna ilość bomb
### 9, 10 - łuki OFF/ON
### 11, 12 - powerp up'y OFF/ON
### 50, 51 - balans żyć w drużynach OFF/ON
### 100 - zestaw ustawień
### 201 - tryb zwykły
### 202 - tryb tylko bomby
### 203 - tryb łuki
### 1000 - mapa
### 1001 - losowa mapa
### 10000 - jak grać

# Zmienianie ustawienia dzień/noc
execute if entity @a[scores={tabliczkaKlik=1}] run scoreboard players set dzien ustawienia 0
execute if entity @a[scores={tabliczkaKlik=2}] run scoreboard players set dzien ustawienia 1
execute if entity @a[scores={tabliczkaKlik=1..2}] run function boom:lobby/option/day

# Zmienianie ustawienia systemu anty-AFK
execute if entity @a[scores={tabliczkaKlik=3}] run scoreboard players set antyAFK ustawienia 50
execute if entity @a[scores={tabliczkaKlik=4}] run scoreboard players add antyAFK ustawienia 25
execute if score antyAFK ustawienia matches 101.. run scoreboard players set antyAFK ustawienia 0
execute if entity @a[scores={tabliczkaKlik=3..4}] run function boom:lobby/option/antiafk

# Zmienianie ustawienia początkowej ilości żyć
execute if entity @a[scores={tabliczkaKlik=5}] run scoreboard players add iloscZycia ustawienia 1
execute if score iloscZycia ustawienia matches 11 run scoreboard players set iloscZycia ustawienia 3
execute if entity @a[scores={tabliczkaKlik=5}] run function boom:lobby/option/lives_on_start

# Zmienianie ustawienia trybu gry
execute if entity @a[scores={tabliczkaKlik=6}] run scoreboard players set tryb ustawienia 0
execute if entity @a[scores={tabliczkaKlik=7}] run scoreboard players set tryb ustawienia 1
execute if entity @a[scores={tabliczkaKlik=6..7}] run function boom:lobby/option/gamemode

# Zmienianie ustawienia maksymalnej ilości bomb
execute if entity @a[scores={tabliczkaKlik=8}] run scoreboard players add maxBomby ustawienia 1
execute if score maxBomby ustawienia matches 10 run scoreboard players set maxBomby ustawienia 3
execute if entity @a[scores={tabliczkaKlik=8}] run function boom:lobby/option/max_bombs

# Zmienianie ustawienia odpychających łuków
execute if entity @a[scores={tabliczkaKlik=9}] run scoreboard players set luk ustawienia 0
execute if entity @a[scores={tabliczkaKlik=10}] run scoreboard players set luk ustawienia 1
execute if entity @a[scores={tabliczkaKlik=9..10}] run function boom:lobby/option/bow

# Zmienianie ustawienia power up'ów
execute if entity @a[scores={tabliczkaKlik=11}] run scoreboard players set powerupy ustawienia 0
execute if entity @a[scores={tabliczkaKlik=12}] run scoreboard players set powerupy ustawienia 1
execute if entity @a[scores={tabliczkaKlik=11..12}] run function boom:lobby/option/powerups

# Zmienianie ustawienia balansu żyć w drużynach
execute if score tryb ustawienia matches 1 if entity @a[scores={tabliczkaKlik=50}] run scoreboard players set balansZyc ustawienia 0
execute if score tryb ustawienia matches 1 if entity @a[scores={tabliczkaKlik=51}] run scoreboard players set balansZyc ustawienia 1
execute if score tryb ustawienia matches 1 if entity @a[scores={tabliczkaKlik=50..51}] run function boom:lobby/option/balance_lives

# Zmienianie ustawienia zestawu ustawień
execute if entity @a[scores={tabliczkaKlik=100..203}] run scoreboard players add zestaw ustawienia 1
execute if score zestaw ustawienia matches 3 run scoreboard players set zestaw ustawienia 0
execute if entity @a[scores={tabliczkaKlik=100..203}] run function boom:lobby/option/settings_preset

# Wczytywanie zestawu ustawień
execute if entity @a[scores={tabliczkaKlik=100}] if score zestaw ustawienia matches 0 run function boom:lobby/settings_preset/default
execute if entity @a[scores={tabliczkaKlik=100}] if score zestaw ustawienia matches 1 run function boom:lobby/settings_preset/only_bombs
execute if entity @a[scores={tabliczkaKlik=100}] if score zestaw ustawienia matches 2 run function boom:lobby/settings_preset/bows

execute if entity @a[scores={tabliczkaKlik=201}] run function boom:lobby/settings_preset/default
execute if entity @a[scores={tabliczkaKlik=202}] run function boom:lobby/settings_preset/only_bombs
execute if entity @a[scores={tabliczkaKlik=203}] run function boom:lobby/settings_preset/bows

execute if entity @a[scores={tabliczkaKlik=201..203}] run function boom:lobby/option/recommended_preset

# Zmienianie ustawienia mapy
execute if entity @a[scores={tabliczkaKlik=1000}] run scoreboard players add mapa ustawienia 1
execute if score mapa ustawienia matches 15 run scoreboard players set mapa ustawienia 1

execute if entity @a[scores={tabliczkaKlik=1001}] run function boom:lobby/random_map

# Ustawianie limitu graczy w zależności od mapy
execute if score mapa ustawienia matches 1 run scoreboard players set liczbaGraczy ustawienia 6
execute if score mapa ustawienia matches 2 run scoreboard players set liczbaGraczy ustawienia 7
execute if score mapa ustawienia matches 3 run scoreboard players set liczbaGraczy ustawienia 6
execute if score mapa ustawienia matches 4 run scoreboard players set liczbaGraczy ustawienia 8
execute if score mapa ustawienia matches 5 run scoreboard players set liczbaGraczy ustawienia 8
execute if score mapa ustawienia matches 6 run scoreboard players set liczbaGraczy ustawienia 6
execute if score mapa ustawienia matches 7 run scoreboard players set liczbaGraczy ustawienia 4
execute if score mapa ustawienia matches 8 run scoreboard players set liczbaGraczy ustawienia 6
execute if score mapa ustawienia matches 9 run scoreboard players set liczbaGraczy ustawienia 5
execute if score mapa ustawienia matches 10 run scoreboard players set liczbaGraczy ustawienia 8
execute if score mapa ustawienia matches 11 run scoreboard players set liczbaGraczy ustawienia 7
execute if score mapa ustawienia matches 12 run scoreboard players set liczbaGraczy ustawienia 4
execute if score mapa ustawienia matches 13 run scoreboard players set liczbaGraczy ustawienia 4
execute if score mapa ustawienia matches 14 run scoreboard players set liczbaGraczy ustawienia 5

execute if entity @a[scores={tabliczkaKlik=1000..1001}] run function boom:lobby/option/map

# Wyświetlanie informacji jak grać
execute as @a[scores={tabliczkaKlik=10000}] run tellraw @s {"text":"","color":"green","extra":[{"text":"[How to Play]\n","bold":"true"},{"text":"- Throw bombs!\n"},{"text":"- Knock other players off the map!\n"},{"text":"- Collect Power Up's!\n"},{"text":"- The last one alive wins!"}]}
execute as @a[scores={tabliczkaKlik=10000}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 2 1.0 1.0

# Resetowanie trigger'a
scoreboard players set @a tabliczkaKlik 0