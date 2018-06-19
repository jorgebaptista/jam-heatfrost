extends KinematicBody2D

var direction = Vector2()

const RIGHT = Vector2(130, 0)
const LEFT = Vector2(-130, 0)

var horizontal_speed = 0

enum COLUMN_POSITION{LEFT_COLUMN, MIDDLE_COLUMN, RIGHT_COLUMN}
var current_column = COLUMN_POSITION.MIDDLE_COLUMN

var temperature = 50
onready var temp_slider = get_node("/root/World/HUD/Temp_Slider")

func _process(delta):
	if current_column == LEFT_COLUMN:
		temperature += delta * -30
	elif current_column == RIGHT_COLUMN:
		temperature += delta * 30
	
	temp_slider.update_slider(temperature)

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_right") and current_column != RIGHT_COLUMN:
		horizontal_speed = 1
		direction = RIGHT
		
		if current_column == LEFT_COLUMN:
			current_column = MIDDLE_COLUMN
		elif current_column == MIDDLE_COLUMN:
			current_column = RIGHT_COLUMN
		
		temp_slider
	elif Input.is_action_just_pressed("ui_left") and current_column != LEFT_COLUMN:
		horizontal_speed = 1
		direction = LEFT
		
		if current_column == RIGHT_COLUMN:
			current_column = MIDDLE_COLUMN
		elif current_column == MIDDLE_COLUMN:
			current_column = LEFT_COLUMN
		
	else:
		horizontal_speed = 0
	
	var collision_info = move_and_collide(horizontal_speed * direction)
	if collision_info:
		get_tree().change_scene("res://Scenes/Lose Menu.tscn")




