class_name PlayerStateMachine extends Node

@export var starting_state : PlayerState

var current_state: PlayerState

func _ready() -> void:
	change_state(starting_state)

func update_state(delta : float) -> void:
	var new_state : PlayerState = current_state.update_state(delta)
	if new_state != null: 
		#print(new_state)
		change_state(new_state)

func process_physics(delta : float) -> void:
	#print(current_state)
	var new_state : PlayerState = current_state.process_physics(delta)
	if new_state != null: 
		print(new_state)
		change_state(new_state)

func change_state(new_state : PlayerState) -> void:
	if current_state:
		current_state.exit()
	current_state = new_state
	current_state.enter()
