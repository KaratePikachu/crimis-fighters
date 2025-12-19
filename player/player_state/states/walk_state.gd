class_name WalkState
extends PlayerState
	
func process_physics(delta : float) -> PlayerState:
	player.movement_component.move()
	
	if player.jump_component.jump():
		return player.air_state
	
	if is_zero_approx(player.input.movement_vector.x):
		return player.idle_state
	
	return null
