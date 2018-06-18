extends Control

func _ready():
	$Value.text = str(score)

func _on_Resume_pressed():
	get_tree().change_scene("res://Scenes/World.tscn")

func _on_Start_Menu_pressed():
	get_tree().change_scene("res://Scenes/Start Menu.tscn")