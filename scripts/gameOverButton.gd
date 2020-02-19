extends Button

func _ready():
	visible = false

func _on_redCar_gameOver():
	visible = true

func _on_gameOverButton_pressed():
	get_tree().change_scene("res://mainMenu.tscn")
