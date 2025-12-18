class_name WalkState
extends PlayerState


func process_physics(delta : float) -> PlayerState:
	player.movement_component.move(delta)
	player.jump_component.refresh_double_jump()
	if player.input.jump && player.jump_component.can_jump():
		player.jump_component.jump()
		return player.air_state
	if is_zero_approx(player.velocity.x):
		return player.idle_state
	return null
