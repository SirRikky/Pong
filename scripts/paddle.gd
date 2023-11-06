extends RigidBody2D

class_name Paddle

@export var speed = 250

func _ready():
	start_paddle()

func _physics_process(delta):
	
	# Adds movement for the players paddle.
	var movement = Vector2.ZERO
	if Input.is_action_pressed("move_up"):
		movement = Vector2.UP
	elif Input.is_action_pressed("move_down"):
		movement = Vector2.DOWN

	linear_velocity = movement * speed

func start_paddle():
	# Resets the paddle.
	global_position.y = 0
	global_position.x = -320
	linear_velocity = Vector2.ZERO
