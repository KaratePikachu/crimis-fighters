class_name AttackState
extends PlayerState

var frame : int = 0



func enter() -> void:
	frame = 0

func process_physics(delta : float) -> PlayerState:
	return null
