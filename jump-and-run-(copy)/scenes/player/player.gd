extends CharacterBody2D

@export var gravity: float = 200
@export var move_speed: float = 100
@export var jump_impuls: float = 200

var double_jump_used = false

func _physics_process(delta):
	velocity.y = velocity.y + gravity * delta
	velocity.y += gravity * delta
	
	#velocity.x = 0
	#if Input.is_action_pressed("move_left"):
		#velocity.x -= move_speed
	#if Input.is_action_pressed("move_right"):
		#velocity.x += move_speed
		
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y -= jump_impuls
		elif not double_jump_used:
			velocity.y -= jump_impuls
			double_jump_used = true



	move_and_slide()
