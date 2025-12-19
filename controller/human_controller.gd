class_name HumanController extends Controller

func get_input() -> ControllerInput:
	var input : ControllerInput = ControllerInput.new()
	input.movement_vector = Vector2(Input.get_axis("move_left","move_right"),0)
	input.jump = Input.is_action_just_pressed("jump")
	return input
