####################################################################
# Projekt: Boom                                                    #
# Autor: Szinton                                                   #
# Funkcja: Zarządzająca machaniem armor standa "Szintona" w Lobby. #
####################################################################

# Zmienianie wyniku na tablicy (odpowiadającego za kąt nachylenia ręki armor standa)
execute if score rosnie timerArmorStanda matches 1 run scoreboard players add timer timerArmorStanda 4
execute if score rosnie timerArmorStanda matches 0 run scoreboard players remove timer timerArmorStanda 4
# Zmienianie ruchu ręki góra-dół
execute if score timer timerArmorStanda matches -140 run scoreboard players set rosnie timerArmorStanda 1
execute if score timer timerArmorStanda matches -100 run scoreboard players set rosnie timerArmorStanda 0
# Ustawianie kąta ręki w na wartość zmiennej "timer" na tablicy "timerArmorStanda"
execute store result entity @e[type=minecraft:armor_stand,name=Szinton,limit=1] Pose.LeftArm[2] float 1.0 run scoreboard players get timer timerArmorStanda