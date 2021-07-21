##################################
# Projekt: Boom                  #
# Autor: Szinton                 #
# Funkcja: Respi entity w lobby. #
##################################

# Zabijanie
tp @e[type=minecraft:slime,tag=blocker] 0 -100 0
kill @e[type=minecraft:armor_stand,tag=lobby]

# Slime blokujący obrót item frame'a
summon minecraft:slime 0 67 -14.0 {Tags:["blocker"],NoAI:1b,Invulnerable:1b,Size:1,ActiveEffects:[{Id:14,Duration:999999,Amplifier:0,ShowParticles:0b}],PersistenceRequired:1b}

# Armor stand: Szinton
summon minecraft:armor_stand 15 66.0 0 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Szinton\"}]",HandItems:[{id:"minecraft:command_block",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9459249}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:474089}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:40427}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Szinton"}}],DisabledSlots:2039583,Rotation:[90f,0f],Pose:{RightArm:[-15f,0f,15f],LeftArm:[-15f,0f,-100f],LeftLeg:[0f,0f,-10f],RightLeg:[0f,0f,10f],Head:[20f,0f,-15f]}}
# Armor stand: youtube.com/szinton
summon minecraft:armor_stand 13 65.5 0 {Tags:["lobby"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"youtube.com/szinton\",\"color\":\"yellow\",\"italic\":\"true\"}]"}
summon minecraft:armor_stand 13 65.2 0 {Tags:["lobby"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"(Polish channel)\",\"color\":\"yellow\",\"italic\":\"true\"}]"}

# Armor standy specjalnych podziękowań
summon minecraft:armor_stand 15 65.9 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Special\",\"color\":\"blue\",\"bold\":\"true\"}]"}
summon minecraft:armor_stand 15 65.6 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"thanks to:\",\"color\":\"blue\",\"bold\":\"true\"}]"}
summon minecraft:armor_stand 15 65.2 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Cloud_Wolf\",\"color\":\"blue\"}]"}
summon minecraft:armor_stand 15 64.9 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"_Zosiek\",\"color\":\"blue\"}]"}
summon minecraft:armor_stand 15 64.6 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"myszkahama1\",\"color\":\"blue\"}]"}

# Armor standy podziękowań dla twórców map
summon minecraft:armor_stand 15 63.7 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Map creators:\",\"color\":\"red\",\"bold\":\"true\"}]"}
summon minecraft:armor_stand 15 63.3 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Lamps\",\"color\":\"red\"}]"}
summon minecraft:armor_stand 15 63.0 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Lukasz_anonim\",\"color\":\"red\"}]"}
summon minecraft:armor_stand 15 62.7 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Ekipa Tesli i Zosiek\",\"color\":\"red\"}]"}
summon minecraft:armor_stand 15 62.4 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"TheIQpl\",\"color\":\"red\"}]"}
summon minecraft:armor_stand 15 62.1 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"TheTartanel007\",\"color\":\"red\"}]"}
summon minecraft:armor_stand 15 61.8 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"_Taoot\",\"color\":\"red\"}]"}
summon minecraft:armor_stand 15 61.5 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"skalimeteor\",\"color\":\"red\"}]"}
summon minecraft:armor_stand 15 61.2 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"smiertelny10\",\"color\":\"red\"}]"}
summon minecraft:armor_stand 15 60.9 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Michalo_01\",\"color\":\"red\"}]"}
summon minecraft:armor_stand 15 60.6 -3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Teszoq\",\"color\":\"red\"}]"}

# Armor standy podziękowań dla testerów
summon minecraft:armor_stand 15 65.4 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Playtesters:\",\"color\":\"green\",\"bold\":\"true\"}]"}
summon minecraft:armor_stand 15 65.0 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"_Zosiek\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 64.7 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"JacobsssPro\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 64.4 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Fottotex\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 64.1 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"HernOX\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 63.8 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Lampards\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 63.5 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"skalimeteor\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 63.2 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"TUKANpanda\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 62.9 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"tymonzez\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 62.6 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"miki_4321\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 62.3 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"raphael5112009\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 62.0 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"4Premium\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 61.7 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"TheTartanel007\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 61.4 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"myszkahama1\",\"color\":\"green\"}]"}
summon minecraft:armor_stand 15 61.1 3 {Tags:["lobby"],Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"_Taoot\",\"color\":\"green\"}]"}

# Armor stand: Autor i Podziękowania
summon minecraft:armor_stand 5 65.5 0 {Tags:["lobby"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Author and Contributors\",\"color\":\"gold\",\"bold\":\"true\"}]"}

# Armor stand: Opcje
summon minecraft:armor_stand -5 65.5 0 {Tags:["lobby"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Settings\",\"color\":\"green\",\"bold\":\"true\"}]"}

# Armor stand: Wybór Mapy
summon minecraft:armor_stand 0 65.5 -5 {Tags:["lobby"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Map choice\",\"color\":\"red\",\"bold\":\"true\"}]"}

# Armor stand: Start!
summon minecraft:armor_stand 0 65.5 5 {Tags:["lobby"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Start!\",\"color\":\"aqua\",\"bold\":\"true\"}]"}

# Armor stand: Start (2)
summon minecraft:armor_stand 0 66.7 14.8 {Tags:["lobby"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Start!\",\"color\":\"red\"}]"}