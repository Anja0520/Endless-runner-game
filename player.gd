extends CharacterBody2D

const JUMP_VELOCITY = -400.0


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	
	if not is_on_floor():
		velocity.y += gravity * delta

	
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	
	if Input.is_action_just_released("ui_accept") and velocity.y < 0:
		velocity.y = velocity.y * 0.5 # سرعت بالا رفتن را نصف کن تا پرش کوتاه شود

	
	move_and_slide()
