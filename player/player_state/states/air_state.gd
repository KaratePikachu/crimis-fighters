class_name AirState
extends PlayerState

func process_physics(delta : float) -> PlayerState:
	player.gravity_component.gravity(delta)
	player.movement_component.move(delta)
	
	
	
	if player.is_on_floor():
		if is_zero_approx(player.velocity.x):
			return player.idle_state
		else:
			return player.walk_state
	if player.jump_component.jump():
		return player.air_state
	return null
