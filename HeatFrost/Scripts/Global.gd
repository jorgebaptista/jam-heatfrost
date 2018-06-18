extends Node

var score = 0

var difficulty = 0

var game_is_on = false

func _process(delta):
	if game_is_on:
		difficulty += 5 * delta