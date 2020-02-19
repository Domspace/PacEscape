extends Button

#Attention!: This script controls all main menu buttons.

func _on_playButton_pressed():
	get_tree().change_scene("res://mainGameScene.tscn")


func _on_quitButton_pressed():
	get_tree().quit()