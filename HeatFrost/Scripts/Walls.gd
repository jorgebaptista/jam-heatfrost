extends KinematicBody2D

var speed = 100

var motion = Vector2()

export var is_initial = false

func _ready():
	if !is_initial:
		position = Vector2(240, -400)

func _process(delta):
	if position.y >= 1199:
		get_parent().spawn_walls()
		queue_free()

func _physics_process(delta):
	motion.y = speed
	
	move_and_collide(motion * delta)