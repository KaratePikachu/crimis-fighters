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
	if player.input.jump:
		print(player.jump_component.has_double_jump)
	if player.input.jump and player.jump_component.has_double_jump:
		player.jump_component.jump()
	return null
