class_name Player extends CharacterBody2D

@onready var idle_state : IdleState = $PlayerStateMachine/IdleState
@onready var walk_state : WalkState = $PlayerStateMachine/WalkState
@onready var air_state : AirState = $PlayerStateMachine/AirState

@onready var movement_component : MovementComponent = $Components/MovementComponent
@onready var gravity_component : GravityComponent = $Components/GravityComponent
@onready var jump_component : JumpComponent = $Components/JumpComponent


@onready var player_state_machine : PlayerStateMachine = $PlayerStateMachine
@export var controller : Controller 

var has_double_jump : bool
var input : Controller.ControllerInput

func _physics_process(delta: float) -> void:
	decide_input()
	
	## Add the gravity.
	#if is_on_floor():
		#has_double_jump = trued
	#else:
		#velocity += get_gravity() * delta
	#
	#if input.jump:
		#jump()
	
	player_state_machine.process_physics(delta)
	move_and_slide()
	#player_state_machine.after_movement(delta)
	

func decide_input() -> void:
	input = controller.get_input()
	input.movement_input = input.movement_input.normalized()
