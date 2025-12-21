@tool
extends Node2D

var last_update_position : float = -1


func _physics_process(delta: float) -> void:
	if $AttackAnimation.current_animation == null:
		return
	if not is_equal_approx(last_update_position,$AttackAnimation.current_animation_position):
		
		update_frame()

func compare_by_frame(a : FDEFrame, b : FDEFrame) -> bool:
	return a.frame_number < b.frame_number

func decide_frame(frames : Array[FDEFrame]) -> FDEFrame:
	var target : FDEFrame = FDEFrame.new(int($AttackAnimation.current_animation_position*60))
	var i : int = frames.bsearch_custom(target, compare_by_frame)
	var current_frame : FDEFrame
	if i >= frames.size() || frames[i].frame_number !=  target.frame_number:
		current_frame = frames[i-1]
	else:
		current_frame = frames[i]
	target.queue_free()
	return current_frame
	
func update_frame() -> void:
	##Create the list of frames
	var frames : Array[FDEFrame] = []
	for node : Node in get_children():
		if node is FDEFrame:
			frames.append(node)
	frames.sort_custom(compare_by_frame)
	
	var current_frame = decide_frame(frames)
	
	for frame in frames:
		frame.visible = frame == current_frame
	#print(current_frame)
	last_update_position = $AttackAnimation.current_animation_position
