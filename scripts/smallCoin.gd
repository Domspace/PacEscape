extends Node2D

onready var area = $coinArea
var overlapping

func _ready():
	$coinAnimator.playing = true