extends CharacterBody2D

var speed : float = 100
var direction : Vector2 

func _ready() -> void:
	var player_pos = get_player().global_position
	if player_pos : 
		look_at(player_pos)
		direction = global_position.direction_to(player_pos)

func _physics_process(delta: float) -> void:
	velocity = direction * speed
	move_and_slide()

func get_player():
	var player = get_tree().get_first_node_in_group("Player")
	if player : 
		return player


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("body detected")


func _on_area_2d_area_entered(area: Area2D) -> void:
	print("area detected")


func _on_area_2d_mouse_entered() -> void:
	print("mouse entered")
