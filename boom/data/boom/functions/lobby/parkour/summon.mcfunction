################################
# Projekt: Boom                #
# Autor: Szinton               #
# Funkcja: Respi AEC parkoura. #
################################

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

summon minecraft:area_effect_cloud 6 65 8 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 1
summon minecraft:area_effect_cloud 8 66 10 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 2
summon minecraft:area_effect_cloud 11 67 10 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 3
summon minecraft:area_effect_cloud 10 68 13 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 4
summon minecraft:area_effect_cloud 13 69 12 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 5
summon minecraft:area_effect_cloud 17 69 12 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 6
summon minecraft:area_effect_cloud 19 70 15 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 7
summon minecraft:area_effect_cloud 22 71 15 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 8
summon minecraft:area_effect_cloud 19 72 17 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 9
summon minecraft:area_effect_cloud 22 73 17 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 10
summon minecraft:area_effect_cloud 21 74 20 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 11
summon minecraft:area_effect_cloud 18 75 19 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 12
summon minecraft:area_effect_cloud 15 76 19 {Tags:["parkour","notbomb"],Duration:214783647}
execute as @e[type=minecraft:area_effect_cloud,tag=parkour] unless score @s parkour matches 0..1000 run scoreboard players set @s parkour 13