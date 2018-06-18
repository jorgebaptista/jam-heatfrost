extends Node

var spawn_background = preload("res://Scenes/Background.tscn")
var spawn_walls = preload("res://Scenes/Walls.tscn")

func spawn_background():
	var background = spawn_background.instance()
	add_child(background)

func spawn_walls():
	var walls = spawn_walls.instance()
	add_child(walls)
