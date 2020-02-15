extends Area2D

onready var carTimer = Timer.new()

var defaultx = get_position().x
var defaulty = get_position().y

func _ready():
	add_child(carTimer)
	carTimer.connect("timeout", self, "_on_Timer_timeout")
	carTimer.set_one_shot(true)
	carTimer.set_timer_process_mode(0)

func _process(delta):
	for bodies in get_overlapping_bodies():
		if bodies.name == "pacMan":
			get_parent().eatenCars += 1
			get_parent().moveCar(self)
			carTimer.start()
			print(carTimer.time_left)
	print(carTimer.time_left)
func _on_Timer_timeout():
	position = Vector2(defaultx, defaulty)