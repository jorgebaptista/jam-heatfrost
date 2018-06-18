extends Node

var score = 0

var difficulty = 0

func _process(delta):
	difficulty += 0.01 * delta
	print (difficulty)