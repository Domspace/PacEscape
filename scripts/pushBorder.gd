extends KinematicBody2D

var moveBorder = false
var motion = Vector2()

func _process(delta):
	if moveBorder == true:
		move_and_slide(Vector2(100,0))
	if position.x >= 400:
		get_tree().change_scene("res://scenes/arcadeStore.tscn")

func _on_button_platinPressed():
	moveBorder = true
	get_parent().get_node("pacMan").border = true