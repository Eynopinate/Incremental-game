class_name Hurtbox
extends Area2D

signal received_damage(damage : int)

@export var health: Health

func _ready() -> void:
	connect("area_entered", _on_area_entered) 

func _on_area_entered(hitbox: Hitbox) -> void:
	print("got hit")
	if hitbox != null:
		print("hitbox detected")
		health.health -= hitbox.damage
		received_damage.emit(hitbox.damage)
	else :
		print("ummm")
