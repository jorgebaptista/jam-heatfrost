extends Node

var is_paused = false

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if !is_paused:
			is_paused = true
			get_tree().paused = true
		else:
			is_paused = false
			get_tree().paused = false
