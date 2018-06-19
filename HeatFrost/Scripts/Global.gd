extends Node

var score = 0

var difficulty = 0
var med_difficulty = 1000
var max_difficulty = 1500

var game_is_on = false

func increase_difficulty():
	if game_is_on:
		if difficulty <= max_difficulty:
			if difficulty < med_difficulty:
				difficulty += 15
			else:
				difficulty += 10
	print (difficulty)