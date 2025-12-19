@tool
extends Area2D

@export_tool_button("Test","2DNodes") var button = test

@export var current_file : String

func test() -> void:
	print("oah")
	var undo_redo = EditorInterface.get_editor_undo_redo()
