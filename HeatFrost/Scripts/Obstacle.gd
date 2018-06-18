extends KinematicBody2D

export var vertical_speed = 200

var motion = Vector2()

# {Side} Obstacle Position
const LF_OBSTACLE_POS = Vector2(120, -32)
const MD_OBSTACLE_POS = Vector2(250, -32)
const RT_OBSTACLE_POS = Vector2(380, -32)

var spawn_position = [LF_OBSTACLE_POS,
 					  MD_OBSTACLE_POS,
 				      RT_OBSTACLE_POS]

func _ready():
	position = spawn_position[randi() % spawn_position.size()]

func _physics_process(delta):
	motion.y = vertical_speed

	var collision = move_and_collide(motion * delta)
	if collision:
		get_tree().change_scene("res://Scenes/Lose Menu.tscn")