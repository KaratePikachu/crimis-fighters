class_name PlayerState extends Node

@onready var player : Player = get_parent().get_parent()

func enter() -> void:
	pass

func exit() -> void:
	pass

func update_state(delta : float) -> PlayerState:
	return null

func process_physics(delta : float) -> void:
	return null
