#####################################
# Projekt: Boom                     #
# Autor: Szinton                    #
# Funkcja: Sprawdza czy się ruszył. #
#####################################

# Sprawdzanie przesunięcia na osiach X i Z
execute store result score tmp pozycjaX run data get entity @s Pos[0] 10
execute store result score tmp pozycjaZ run data get entity @s Pos[2] 10
scoreboard players operation @s pozycjaX -= tmp pozycjaX
scoreboard players operation @s pozycjaZ -= tmp pozycjaZ
execute if score @s pozycjaX matches ..-1 run scoreboard players operation @s pozycjaX *= minus_1 pozycjaX
execute if score @s pozycjaZ matches ..-1 run scoreboard players operation @s pozycjaZ *= minus_1 pozycjaX
scoreboard players operation suma pozycjaX = @s pozycjaX
scoreboard players operation suma pozycjaX += @s pozycjaZ

execute if score suma pozycjaX matches 61.. run scoreboard players set @s licznikAFK 0

scoreboard players operation @s pozycjaX = tmp pozycjaX
scoreboard players operation @s pozycjaZ = tmp pozycjaZ