########################################
# Projekt: Boom                        #
# Autor: Szinton                       #
# Funkcja: Update'uje parkour w lobby. #
########################################

### Zbiór koordynatów z blokami parkoura (13):
### 6 65 8
### 8 66 10
### 11 67 10
### 10 68 13
### 13 69 12
### 17 69 12
### 19 70 15
### 22 71 15
### 19 72 17
### 22 73 17
### 21 74 20
### 18 75 19
### 15 76 19

# Znajdowanie najdalszego bloku, na którym stoi jakiś gracz
scoreboard players set furthestBlock parkour 13
function boom:lobby/parkour/find_furthest_block
scoreboard players add furthestBlock parkour 1

# Update bloków
function boom:lobby/parkour/update_blocks

# Dodawanie graczy do parkoura
execute at @e[type=minecraft:area_effect_cloud,tag=parkour,scores={parkour=1}] as @a[distance=..1.5,tag=!duringParkour] run function boom:lobby/parkour/start

# Update timer'a
execute as @a[tag=duringParkour] run function boom:lobby/parkour/update_timer

# Sprawdzenie ukończenia parkoura
execute at @e[type=minecraft:area_effect_cloud,tag=parkour,scores={parkour=13}] as @a[distance=..1.5,tag=duringParkour] run function boom:lobby/parkour/finish