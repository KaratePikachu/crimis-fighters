class_name FollowController extends Controller

func get_input() -> ControllerInput:
	var input : ControllerInput = ControllerInput.new()
	input.movement_input = Vector2(0,0)
	return input
