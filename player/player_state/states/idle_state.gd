class_name IdleState
extends PlayerState


func process_physics(delta : float) -> PlayerState:
	
	if not is_zero_approx(player.input.movement_input.x):
		player.movement_component.move(delta)
		return player.walk_state
	player.jump_component.refresh_double_jump()
	if player.input.jump && player.jump_component.can_jump():
		player.jump_component.jump()
		return player.air_state
	return null
