class_name WalkState
extends PlayerState

func enter() -> void:
	pass

func process_physics(delta : float) -> PlayerState:
	player.movement_component.move(delta)
	
	if player.jump_component.jump():
		return player.air_state
		
	if is_zero_approx(player.velocity.x):
		return player.idle_state
	return null
