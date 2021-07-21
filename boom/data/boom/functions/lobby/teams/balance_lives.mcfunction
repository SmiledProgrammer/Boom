#########################################
# Projekt: Boom                         #
# Autor: Szinton                        #
# Funkcja: Balansuje życia w drużynach. #
#########################################

execute if score iloscNiebieskich spawn > iloscCzerwonych spawn run function boom:lobby/teams/balance_lives_red
execute if score iloscNiebieskich spawn < iloscCzerwonych spawn run function boom:lobby/teams/balance_lives_blue