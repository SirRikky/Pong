extends CharacterBody2D

class_name Ball

# Starting speed
@export var initial_ball_speed = 10
# Sped increase of 2% on a colission
@export var speed_multiplier = 1.02

var ball_speed = initial_ball_speed

func _ready():
	start_ball()
	

func _physics_process(delta):
	var collision = move_and_collide(velocity * ball_speed * delta)
	
	if(collision):
		velocity = velocity.bounce(collision.get_normal()) * speed_multiplier

#Randomises the balls direction on start
func start_ball():
	randomize()
	velocity.x = [-1, 1][randi() % 2] * initial_ball_speed
	velocity.y = [-0.75, 0.75][randi() % 2] * initial_ball_speed



