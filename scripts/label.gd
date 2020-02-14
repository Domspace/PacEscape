extends Label

func _ready():
	text = "x" + str(get_parent().collectedCoins)

func _process(delta):
	text = "x" + str(get_parent().collectedCoins)