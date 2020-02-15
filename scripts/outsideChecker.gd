extends Area2D

func _process(delta):
	for elem in get_overlapping_bodies():
		if elem.name == "pacMan":
			if get_tree().get_current_scene().get_name() == "secondLevel":
				get_tree().change_scene("res://scenes/platin.tscn")
			if get_tree().get_current_scene().get_name() == "arcadeStore":
				get_tree().change_scene("res://scenes/overworld.tscn")