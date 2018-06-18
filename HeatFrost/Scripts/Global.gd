extends Node

var score = 0

var difficulty = 0

func _process(delta):
	difficulty += 5 * delta
	print (difficulty)