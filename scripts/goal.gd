extends Area2D

signal point_scored

func _on_body_entered(body):
	
	# Detects a ball and gives a point.
	if body is Ball:
		point_scored.emit()



 




