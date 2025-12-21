@tool
extends Node2D

@export_tool_button("Add Frame","Add") var add_frame_button = add_frame

@export_category("Import")
@export var import_data : AttackData
@export_tool_button("Import","ArrowRight") var import_button = import

@export_category("Export")
@export var export_path : String
@export_tool_button("Export","ArrowLeft") var export_button = export

var current_frame

func add_frame() -> void:
	var new_frame : FDEFrame = FDEFrame.new(-1)
	new_frame.name = "Frame"+str($Attack.get_child_count()+1)
	$Attack.add_child(new_frame)
	new_frame.owner = get_tree().edited_scene_root

func import() -> void:
	print("oah")
	#var undo_redo = EditorInterface.get_editor_undo_redo()

func export() -> void:
	print("oah")
	#var undo_redo = EditorInterface.get_editor_undo_redo()
