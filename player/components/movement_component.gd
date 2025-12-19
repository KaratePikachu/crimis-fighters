class_name MovementComponent extends PlayerComponent

const MAX_SPEED = 500.0

# X frame to neutral / y frames to turnaround
@export var ground_acceleration : float = 400 # 1 /2
@export var air_acceleration : float = 150 # 3/6
@export var neutral_deceleration : float = 150 # 3/6

var velocity : float = 0

func move() -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction : float = player.input.movement_vector.x
	if is_zero_approx(direction):
		velocity = move_toward(velocity,0,neutral_deceleration)
	else:
		if player.is_on_floor():
			velocity = clampf(velocity+direction*ground_acceleration,-MAX_SPEED,MAX_SPEED)
		else:
			velocity = clampf(velocity+direction*air_acceleration,-MAX_SPEED,MAX_SPEED)
	player.velocity.x = velocity
	
