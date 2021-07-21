#########################################################
# Projekt: Boom                                         #
# Autor: Szinton                                        #
# Funkcja: Daje wygraną drużynie z większą ilością żyć. #
#########################################################

# Zliczenie graczy z szukaną ilością żyć
scoreboard players set zyciaNiebieskich spawn 0
scoreboard players set zyciaCzerwonych spawn 0
execute as @a[tag=wgrze,team=niebiescy] run scoreboard players operation zyciaNiebieskich spawn += @s zycia
execute as @a[tag=wgrze,team=czerwoni] run scoreboard players operation zyciaCzerwonych spawn += @s zycia

# Wygrana dla drużyny z większą ilością żyć
execute if score zyciaNiebieskich spawn > zyciaCzerwonych spawn run function boom:game/end/teams_blue
execute if score zyciaNiebieskich spawn < zyciaCzerwonych spawn run function boom:game/end/teams_red

# Remis
execute if score zyciaNiebieskich spawn = zyciaCzerwonych spawn run function boom:game/end/teams_tie