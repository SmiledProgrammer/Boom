###########################################
# Projekt: Boom                           #
# Autor: Szinton                          #
# Funkcja: Ustawia wszystko na start gry. #
###########################################

# Usuwanie wszystkich z parkour'a
tag @a remove duringParkour

# Policzenie graczy
execute store result score iloscGraczy licznikAFK if entity @a

# Bossbar czasu gry
scoreboard players set stanLicznikaCzasuGry licznikAFK 0
function boom:game/game_time/init

# Dodanie graczy do gry
scoreboard players set numer nrGracza 0
function boom:game/start/add_players

# Zliczenie graczy w drużynach
execute store result score iloscCzerwonych spawn if entity @a[team=czerwoni]
execute store result score iloscNiebieskich spawn if entity @a[team=niebiescy]

# Dołączanie do drużyny, jeśli ktoś nie dołączył
execute if score tryb ustawienia matches 1 as @a[team=zwykly] run function boom:lobby/teams/force_join

# Setup systemu anty-kamperskiego
scoreboard players set @a tepyBezSmierci 0
scoreboard players operation odstep licznikAFK = antyAFK ustawienia
scoreboard players operation odstep licznikAFK /= iloscGraczy licznikAFK

# Setup braku odrzutu po spawnie
tag @a remove brakOdrzutu
scoreboard players set @a czasBrakuOdrzutu 0

# Ustawienie czasów title
execute if score antyAFK ustawienia matches 50 run title @a times 0 50 0
execute if score antyAFK ustawienia matches 75 run title @a times 0 75 0
execute if score antyAFK ustawienia matches 100 run title @a times 0 100 0

# Ustawianie scoreboard'ów
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list zycia

# Powiadomienie o rozpoczęciu gry
title @a title {"text":"The game is starting!","color":"red"}

# Setup mapy
execute if score mapa ustawienia matches 1 run function boom:map/boogie_woogie/setup
execute if score mapa ustawienia matches 2 run function boom:map/islands/setup
execute if score mapa ustawienia matches 3 run function boom:map/ender/setup
execute if score mapa ustawienia matches 4 run function boom:map/apocalypse/setup
execute if score mapa ustawienia matches 5 run function boom:map/gold_mine/setup
execute if score mapa ustawienia matches 6 run function boom:map/candyland/setup
execute if score mapa ustawienia matches 7 run function boom:map/flying_madness/setup
execute if score mapa ustawienia matches 8 run function boom:map/winter/setup
execute if score mapa ustawienia matches 9 run function boom:map/nether/setup
execute if score mapa ustawienia matches 10 run function boom:map/depths/setup
execute if score mapa ustawienia matches 11 run function boom:map/elementals/setup
execute if score mapa ustawienia matches 12 run function boom:map/planets/setup
execute if score mapa ustawienia matches 13 run function boom:map/desert/setup
execute if score mapa ustawienia matches 14 run function boom:map/planes/setup

# Ustawianie widoczności nick'ów
team modify zwykly nametagVisibility never
team modify czerwoni nametagVisibility hideForOtherTeams
team modify niebiescy nametagVisibility hideForOtherTeams

# Wyczyszczenie efektu słabości z lobby
effect clear @a[tag=wgrze] minecraft:weakness

# Danie efektów na start gry
effect give @a[tag=wgrze] minecraft:slowness 1 255 true
effect give @a[tag=wgrze] minecraft:blindness 1 255 true
effect give @a[tag=wgrze] minecraft:resistance 999999 255 true

# Ustawienie graczom poczatkowej ilości żyć
scoreboard players operation @a[tag=wgrze] zycia = iloscZycia ustawienia

# Wybalansowanie żyć w drużynach
execute if score balansZyc ustawienia matches 1 run function boom:lobby/teams/balance_lives

# Ustawienie przygodowego trybu gry
gamemode adventure @a[tag=wgrze]

# Danie graczom bomby na start
execute as @a[tag=wgrze] run scoreboard players operation @s bomby = maxBomby ustawienia
scoreboard players set @a[tag=wgrze] licznikBomb 0

# Wyłączenie knockbacka na 3 sekundy
execute as @a[tag=wgrze] run function boom:game/death/no_knockback_set

# Włączenie respienia się power up'ów
execute if score powerupy ustawienia matches 1 run schedule function boom:powerup/spawn 30s

# Ustawienie początkowego wyniku spawna dla wszystkich graczy
scoreboard players set @a[tag=wgrze] spawn -1

# Danie graczom taga śmierci (funkcja "get_spawn_spot" wymaga tego do poprawnego przeteleportowania gracza na losowe miesjce spawnu)
tag @a[tag=wgrze] add smierc
# Losowanie numerów punktów respawnu
function boom:respawn/create_respawn_points
# Zrespienie graczy na losowych miejscach
execute as @a[tag=wgrze] at @s run function boom:game/get_spawn_spot

# Danie graczom itemów
execute as @a[tag=wgrze] run function boom:game/inventory/stick
execute if score luk ustawienia matches 1 as @a[tag=wgrze] run function boom:game/inventory/bow
execute as @a[tag=wgrze,team=niebiescy,tag=!niewidzialny] run function boom:game/inventory/armor_blue
execute as @a[tag=wgrze,team=czerwoni,tag=!niewidzialny] run function boom:game/inventory/armor_red

# Dźwięk rozpoczęcia gry
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 10 1.0 1.0

# Reset systemu anty-AFK
scoreboard players set licznikOdstepu licznikAFK 0
scoreboard players set @a licznikAFK 0
scoreboard players set aktualny nrGracza 0

# Puszczanie funkcji
schedule function boom:game/remove_jumpboost 10t
schedule function boom:game/play10t 10t
schedule function boom:game/play20t 20t
schedule function boom:game/play50t 50t

# Zabijanie bomb z poprzedniej gry
function boom:game/start/kill_bombs
schedule function boom:game/start/kill_bombs 1t append
schedule function boom:game/start/kill_bombs 2t append
schedule function boom:game/start/kill_bombs 3t append