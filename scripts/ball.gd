extends CharacterBody2D

class_name Ball

# Starting speed.
@export var initial_ball_speed = 12
var ball_speed = initial_ball_speed
# Sped increase of 2% on a collision.
@export var speed_multiplier = 1.02

func _ready():
	start_ball()

func _physics_process(delta):
	# Detects a collision.
	var collision = move_and_collide(velocity * ball_speed * delta)
	
	# Makes the ball bounce of an entity it collides with.
	if(collision):
		velocity = velocity.bounce(collision.get_normal()) * speed_multiplier

func start_ball():
	# Randomises the balls direction.
	global_position = Vector2.ZERO
	velocity = Vector2.ZERO
	randomize()
	velocity.x = [-1, 1][randi() % 2] * initial_ball_speed
	velocity.y = [-0.75, 0.75][randi() % 2] * initial_ball_speed



