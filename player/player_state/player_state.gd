class_name PlayerState extends Node

@onready var player : Player = get_parent().get_parent()

func enter() -> void:
	pass

func exit() -> void:
	pass

func process_physics(delta : float) -> PlayerState:
	return null
