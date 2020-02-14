extends Node

#the variable that the coins add values too. This also handles the placement of the coins
var collectedCoins = 0

func _ready():
	collectedCoins = 0

func moveCoin(coin):
	coin.position = Vector2(0 + (8*collectedCoins), 10)

func _process(delta):
	if collectedCoins == 10:
		get_tree().change_scene("res://scenes/secondLevel.tscn")