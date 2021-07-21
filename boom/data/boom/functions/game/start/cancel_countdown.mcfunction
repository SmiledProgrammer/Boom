#########################
# Projekt: Boom         #
# Autor: Szinton        #
# Funkcja: Anuluje grę. #
#########################

title @a subtitle {"text":"The game has been canceled!","color":"red","bold":"true"}
schedule clear boom:game/start/start
schedule clear boom:game/start/countdown