extends Camera2D

func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		zoom.x = 1
		zoom.y = 1
	else:
		zoom.x = 0.5
		zoom.y = 0.5