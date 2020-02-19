extends Button



func _on_playButton_pressed():
	get_tree().change_scene("mainGameScene.tscn")


func _on_quitButton_pressed():
	get_tree().quit()
