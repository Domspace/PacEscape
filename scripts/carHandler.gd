extends Node

#the variable that the coins add values too. This also handles the placement of the coins
var eatenCars = 0

func _ready():
	eatenCars = 0

func moveCar(car):
	car.position = Vector2(-10, -10)

func idleCarMovement(car):
	if car.position.x >= get_viewport().size.x / 2 -10:
		print("Game Over!")
		car.position.x += -1
	elif get_viewport().size.x / 2 > car.position.x:
		car.position.x += 0.2