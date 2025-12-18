class_name IdleState
extends PlayerState
	
func process_physics(delta : float) -> PlayerState:
	
	var walked : bool = false
	
	if not is_zero_approx(player.input.movement_input.x):
		player.movement_component.move(delta)
		walked = true
	
	if player.jump_component.jump():
		return player.air_state
	
	if walked:
		return player.walk_state
	return null
