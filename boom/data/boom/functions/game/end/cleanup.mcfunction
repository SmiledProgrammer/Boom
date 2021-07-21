#############################
# Projekt: Boom             #
# Autor: Szinton            #
# Funkcja: Sprząta po grze. #
#############################

# Wyłączanie pętli gry
scoreboard players set czasGry licznikAFK -2

# Reset odliczania w lobby
scoreboard players set licznikStartu timerArmorStanda -2

# Ustawianie scoreboard'ów
scoreboard objectives setdisplay list wygrane
scoreboard objectives setdisplay sidebar wygrane

# Czyszczenie niewidzialności
execute as @a[tag=wgrze,tag=niewidzialny] run function boom:powerup/remove_invisibility

# Usuwanie bossbar'a czasu gry
bossbar set minecraft:czas_gry players @a[distance=999999..]

# Czyszczenie itemów z gry
clear @a

# Usuwanie power up'ów z mapy
kill @e[type=minecraft:armor_stand,tag=powerup]
# Zatrzymanie spawnowania power up'ów

# Stawianie guzika startu z powrotem w lobby
setblock 0 66 14 minecraft:birch_button[powered=false]

# Zabijanie wszystkich AEC z mapy
kill @e[type=minecraft:area_effect_cloud,tag=!parkour]

# Zabijanie bomb
kill @e[type=minecraft:potion]

# Zmienienie gamemode'a
gamemode adventure @a

# Zabicie wszystkich graczy
kill @a

# Efekt fajerwerek
execute unless score bezFajerwerek spawn matches 1 run function boom:lobby/fireworks
scoreboard players set bezFajerwerek spawn 0

# Wyłączenie action bar'a
title @a actionbar ""

# Ustawienie czasów title
title @a times 0 40 0

# Usunięcie graczom tagów z gry
tag @a remove wgrze
tag @a remove smierc
tag @a remove sprawdzonyAFK

# Wyłączanie forceload'ów mapy
forceload remove all

# Widzenie nametag'ów w lobby
team modify zwykly nametagVisibility always
team modify czerwoni nametagVisibility always
team modify niebiescy nametagVisibility always

# Wyłączenie zapętlonych funkcji
schedule clear boom:game/play10t
schedule clear boom:game/play20t
schedule clear boom:game/play50t

schedule clear boom:powerup/spawn
schedule clear boom:map/ender/portal_cooldown

schedule clear boom:game/game_time/end/setup
schedule clear boom:game/game_time/sudden_death/setup
schedule clear boom:powerup/update_invisibility