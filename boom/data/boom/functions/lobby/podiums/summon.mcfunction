############################################################
# Projekt: Boom                                            #
# Autor: Szinton                                           #
# Funkcja: Respi armor standy w lobby podiów turniejowych. #
############################################################

# Zabijanie
kill @e[type=minecraft:armor_stand,tag=podium]

# Armor standy kategorii turniejowych
summon minecraft:armor_stand -1001.0 66.0 3 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Normal\",\"color\":\"white\",\"bold\":\"true\"}]"}
summon minecraft:armor_stand -1001.0 65.7 3 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Category\",\"color\":\"white\",\"bold\":\"true\"}]"}

summon minecraft:armor_stand -998.0 66.0 3 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Bow\",\"color\":\"gold\",\"bold\":\"true\"}]"}
summon minecraft:armor_stand -998.0 65.7 3 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Category\",\"color\":\"gold\",\"bold\":\"true\"}]"}

summon minecraft:armor_stand -1001.0 66.0 10 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Bomb\",\"color\":\"red\",\"bold\":\"true\"}]"}
summon minecraft:armor_stand -1001.0 65.7 10 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Category\",\"color\":\"red\",\"bold\":\"true\"}]"}

summon minecraft:armor_stand -998.0 66.0 10 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Free for All\",\"color\":\"yellow\",\"bold\":\"true\"}]"}
summon minecraft:armor_stand -998.0 65.7 10 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Category\",\"color\":\"yellow\",\"bold\":\"true\"}]"}

summon minecraft:armor_stand -1001.0 66.0 19.0 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Teams\",\"color\":\"green\",\"bold\":\"true\"}]"}
summon minecraft:armor_stand -1001.0 65.7 19.0 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Category\",\"color\":\"green\",\"bold\":\"true\"}]"}

# Armor stand najszybszego czasu parkoura
summon minecraft:armor_stand -998.0 66.0 19.0 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Fastest\",\"color\":\"aqua\",\"bold\":\"true\"}]"}
summon minecraft:armor_stand -998.0 65.7 19.0 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Parkour Time\",\"color\":\"aqua\",\"bold\":\"true\"}]"}

summon minecraft:armor_stand -997 67.2 18 {Tags:["podium"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"5.80\",\"color\":\"dark_red\",\"bold\":\"true\"}]"}