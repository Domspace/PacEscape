extends KinematicBody2D

#the amount of pixels that the char moves
var speed = 100
#the direction in which the char moves. Default is a empty Vector2
var motion = Vector2()
#the rotation degree of the animated sprite
var degree = 0
#the multiplier that is used for sprinting
var boost = 1
var border = false

func _physics_process(delta):
	#basic input map
	if Input.is_action_pressed("shift"):
		boost = 2.5
	else:
		boost = 1
	if Input.is_action_pressed("ui_down"):
		motion.y += 1
		degree = 90
	if Input.is_action_pressed("ui_right") or border:
		motion.x += 1
		degree = 0
	if Input.is_action_pressed("ui_left") and !border:
		motion.x -= 1
		degree = 180
	if Input.is_action_pressed("ui_up"):
		motion.y -= 1
		degree = 270
	#the animation gets rotated in the direction the player moves
	$pacManAnim.rotateAnim(degree)
	move_and_slide(motion.normalized()*speed*boost)
	motion.x = 0; motion.y = 0