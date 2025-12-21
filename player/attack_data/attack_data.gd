@tool
class_name AttackData
extends Resource
#
#@export var frames : Array[AttackFrame]
#
#@export var current_frame : int = 0:
	#set(new_val):
		#current_frame = new_val
		#if Engine.is_editor_hint():
			#update_hitboxes(current_frame)
#
#@onready var collision_shapes : Array[CollisionShape2D] = [
	#$CollisionShape2D,
	#$CollisionShape2D2,
	#$CollisionShape2D3
#]
#
#func update_hitboxes(frame_number : int) -> void:
	#if frame_number >= frames.size():
		#return
	#print("updating hitboxes")
	#var current_frame : AttackFrame = frames[frame_number]
	#for i in range(collision_shapes.size()):
		#print(collision_shapes[i])
		#if i <current_frame.hitbox_shapes.size():
			#collision_shapes[i].shape = current_frame.hitbox_shapes[i]
			#print(current_frame.hitbox_shapes[i])
			#collision_shapes[i].position = current_frame.positions[i]
			#print(current_frame.positions[i])
	#pass
