extends RigidBody2D



@export var speed = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var movement = Vector2.ZERO
	if Input.is_action_pressed("move_up"):
		movement = Vector2.UP
	elif Input.is_action_pressed("move_down"):
		movement = Vector2.DOWN

	linear_velocity = movement * speed

