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

var score_to_add = 10
onready var score_text = get_node("/root/World/HUD/Score")

func _ready():
	position = spawn_position[randi() % spawn_position.size()]

func _physics_process(delta):
	motion.y = vertical_speed

	var collision = move_and_collide(motion * delta)
	if collision:
		get_tree().change_scene("res://Scenes/Lose Menu.tscn")
	
	if position.y >= 820:
		score_text.update_score(score_to_add)
		queue_free()