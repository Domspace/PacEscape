extends Button

#Attention!: This script controls all main menu buttons.

func _on_playButton_pressed():
	get_tree().change_scene("res://mainGameScene.tscn")


func _on_quitButton_pressed():
	get_tree().quit()

func _on_creditsButton_pressed():
	get_node("/root/mainMenu/camera").position = Vector2(0, 608)

func _on_backButton_pressed():
	get_node("/root/mainMenu/camera").position = Vector2(0, 0)
