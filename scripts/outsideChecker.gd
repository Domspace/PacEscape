extends Area2D

func _process(delta):
	for elem in get_overlapping_bodies():
		if elem.name == "pacMan":
			get_tree().change_scene("res://scenes/platin.tscn")