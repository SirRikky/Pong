extends Node2D

var player_score = 0
var ai_score = 0

@onready var player_paddle = $playerPaddle as Paddle
@onready var ai_paddle = $aiPaddle as AIPaddle
@onready var ball = $ball as Ball
@onready var ui = $ui as UI

func _on_player_scored():
	# Handles player points
	player_score += 1
	ui.update_player_score(player_score)
	reset_game_state()

func _on_ai_scored():
	# Handles ai points
	ai_score += 1
	ui.update_ai_score(ai_score)
	reset_game_state()

func reset_game_state():
	
	# Calls the reset methods.
	ball.start_ball()
	player_paddle.start_paddle()
	ai_paddle.start_paddle()








