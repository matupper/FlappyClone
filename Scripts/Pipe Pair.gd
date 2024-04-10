extends Node2D

@onready var botPipe = $BotPipe
@onready var topPipe = $TopPipe
@onready var pointSFX = $Point

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_path_follow_2d_pipe_loop():
	pointSFX.play()
	var spacing = randf_range(0, 4)
	botPipe.position.y = 80 + spacing
	topPipe.position.y = -80 - spacing
	pass # Replace with function body.
