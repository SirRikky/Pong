extends RigidBody2D

class_name AIPaddle

@export var paddle_speed = 20000
@export var ball: Ball

func _ready():
	start_paddle()

func _physics_process(delta):
	
	# Paddle moves towarde the ball
	var direction = (ball.position - position).normalized()
	linear_velocity.y = direction.y * paddle_speed * delta

func start_paddle():
	# Resets the paddle.
	global_position.y = 0
	linear_velocity = Vector2.ZERO
