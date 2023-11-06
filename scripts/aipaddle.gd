extends RigidBody2D

#class_name AIPaddle

@export var paddle_speed = 20000
@export var ball: Ball

func _physics_process(delta):
	
	# Paddle moves towarde the ball
	var direction = (ball.position - position).normalized()
	linear_velocity.y = direction.y * paddle_speed * delta

#func start_paddle():
#	# Randomises the balls direction.
#	global_position.y = Vector2.ZERO
#	linear_velocity = Vector2.ZERO
