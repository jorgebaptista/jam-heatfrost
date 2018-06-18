extends HSlider

func update_slider(temperature):
	value = temperature
	if temperature >= 99 or temperature <= 0:
		get_tree().change_scene("res://Scenes/Lose Menu.tscn")
