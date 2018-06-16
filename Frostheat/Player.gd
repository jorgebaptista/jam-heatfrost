extends KinematicBody2D

var horizontal_speed = 200
var vertical_speed = 100

var motion = Vector2()

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x = horizontal_speed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -horizontal_speed
	else:
		motion.x = 0
		
func _physics_process(delta):
	motion.y = -vertical_speed
	
	motion = move_and_slide(motion)