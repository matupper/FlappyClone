extends CharacterBody2D

signal gameOver

@onready var sprite = $AnimatedSprite2D
@onready var hurtbox = $Hurtbox
@onready var jumpSFX = $Flap
@onready var hurtSFX = $Hurt
const JUMP_VELOCITY = -150

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 400.0

func _physics_process(delta):
	# Add the gravity.
	velocity.y += gravity * delta
	velocity.x = 0	# Handle jump.
	if Input.is_action_just_pressed("Flap"):
		velocity.y = JUMP_VELOCITY
		sprite.play("flap")
		jumpSFX.play()
	move_and_slide()

	if hurtbox.get_overlapping_bodies().size() > 0:
		hurtSFX.play()
		emit_signal("gameOver")
		
func _on_game_over():
	# get_tree().paused = true
	pass # Replace with function body.
