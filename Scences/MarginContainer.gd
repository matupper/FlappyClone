extends MarginContainer

@onready var game = preload("res://Scences/game.tscn")

func _on_character_body_2d_game_over():
	visible = true
	pass # Replace with function body.


func _on_play_button_button_down():
	get_tree().change_scene_to_packed(game)
	pass # Replace with function body.


func _on_quit_button_pressed():
	get_tree().quit()
	pass # Replace with function body.
