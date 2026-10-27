extends KinematicBody2D

const SPEED = 80.0
var velocity = Vector2.ZERO

# warning-ignore:unused_argument
func _physics_process(delta:float) -> void:
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed('ui_left'):
		velocity.x = -1 * SPEED
	if Input.is_action_pressed('ui_right'):
		velocity.x = 1 * SPEED
	if Input.is_action_pressed('ui_up'):
		velocity.y = -1 * SPEED
	if Input.is_action_pressed('ui_down'):
		velocity.y = 1 * SPEED
	velocity = move_and_slide(velocity)
	
	if velocity == Vector2.ZERO:
		$Animacao.play("idle")
	else:
		$Animacao.play("walk")
	if velocity.x < 0.0:
		$Animacao.flip_h = true
	else:
		$Animacao.flip_h = false
