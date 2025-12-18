class_name JumpComponent
extends PlayerComponent

const JUMP_VELOCITY = -400.0

var has_double_jump : bool = false

func refresh_double_jump() -> void:
	has_double_jump = true

func can_jump() -> bool:
	return player.is_on_floor() or has_double_jump

func jump() -> void:
	if not player.is_on_floor():
		has_double_jump = false
	player.velocity.y = JUMP_VELOCITY
