class_name FollowController extends Controller

func get_input() -> ControllerInput:
	var input : ControllerInput = ControllerInput.new()
	input.movement_vector = Vector2(0,0)
	return input
