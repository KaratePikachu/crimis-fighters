class_name JumpComponent
extends PlayerComponent

const JUMP_VELOCITY = -400.0

var has_double_jump : bool = false

func jump() -> bool:
	if player.input.jump and can_jump():
		has_double_jump = player.is_on_floor()
		player.velocity.y = JUMP_VELOCITY
		return true
	return false
		
func can_jump() -> bool:
	return player.is_on_floor() or has_double_jump
	
