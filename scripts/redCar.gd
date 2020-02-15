extends Area2D

func _process(delta):
	if get_overlapping_bodies() != []:
		get_parent().eatenCars += 1
		get_parent().moveCar(self)