class_name GravityComponent
extends PlayerComponent


func gravity(delta : float) -> void:
	player.velocity += player.get_gravity() * delta
