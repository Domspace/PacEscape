extends AnimatedSprite

func _ready():
	playing = true

func rotateAnim(degree = 0):
	rotation_degrees = degree