extends Node

#the variable that the coins add values too. This also handles the placement of the coins
var eatenCars = 0

func _ready():
	eatenCars = 0

func moveCar(car):
	car.position = Vector2(-10, -10)
