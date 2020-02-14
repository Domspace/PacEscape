extends Node2D

onready var buttonSprite = $AnimatedSprite
onready var buttonArea = $Area2D
signal platinPressed
var alreadyPressed = false

func _ready():
	buttonSprite.animation = "idle"

func _process(delta):
	for bodies in buttonArea.get_overlapping_bodies():
		if bodies.name == "pacMan":
			if Input.is_action_just_pressed("interact") and alreadyPressed == false:
				emit_signal("platinPressed")
				buttonSprite.animation = "clicked"