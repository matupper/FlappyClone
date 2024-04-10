extends Label

@onready var pipe_pair = $"../Path2D/PathFollow2D/PipePair"
@onready var bird = $"../Bird/CharacterBody2D"


func _process(delta):
	if bird.final_score > 0:
		text = bird.final_score
	else:
		text = str(pipe_pair.score)
