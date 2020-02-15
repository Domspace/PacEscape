extends "res://scripts/smallCoin.gd"

func _process(delta):
	overlapping = area.get_overlapping_bodies()
	if overlapping != []:
		get_parent().collectedCoins += 0.5
		get_parent().moveCoin(self)