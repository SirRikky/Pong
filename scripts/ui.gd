extends CanvasLayer

class_name UI

@onready var player_points_label = $MarginContainer/aiPoints
@onready var ai_points_label = $MarginContainer/aiPoints

# Called when the node enters the scene tree for the first time.
func _ready():
	player_points_label.text = "%d" % 0
	ai_points_label.text = "%d" % 0

func update_player_score(points: int):
	player_points_label.text = "%d" % points

func update_ai_score(points: int):
	ai_points_label.text = "%d" % points
	




