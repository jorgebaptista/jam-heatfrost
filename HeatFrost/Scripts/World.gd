extends Node

onready var score_text = get_node("/root/World/HUD/Score")

func _ready():
	global.difficulty = 0
	global.game_is_on = true
	global.score = 0
	score_text.update()

